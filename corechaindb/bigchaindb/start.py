# Copyright © 2020 Interplanetary Database Association e.V.,
# BigchainDB and IPDB software contributors.
# SPDX-License-Identifier: (Apache-2.0 AND CC-BY-4.0)
# Code is Apache-2.0 and docs are CC-BY-4.0

import logging
import setproctitle

from abci import TmVersion, ABCI

import corechaindb
from corechaindb.lib import BigchainDB
from corechaindb.core import App
from corechaindb.parallel_validation import ParallelValidationApp
from corechaindb.web import server, websocket_server
from corechaindb.events import Exchange, EventTypes
from corechaindb.utils import Process


logger = logging.getLogger(__name__)

BANNER = """
****************************************************************************
*                                                                          *
*                             BigchainDB 2.2.2                             *
*   codename "jumping sloth"                                               *
*   Initialization complete. BigchainDB Server is ready and waiting.       *
*                                                                          *
*   You can send HTTP requests via the HTTP API documented in the          *
*   BigchainDB Server docs at:                                             *
*    https://corechaindb.com/http-api                                       *
*                                                                          *
*   Listening to client connections on: {:<15}                    *
*                                                                          *
****************************************************************************
"""


def start(args):
    # Exchange object for event stream api
    logger.info('Starting BigchainDB')
    exchange = Exchange()
    # start the web api
    app_server = server.create_server(
        settings=corechaindb.config['server'],
        log_config=corechaindb.config['log'],
        corechaindb_factory=BigchainDB)
    p_webapi = Process(name='corechaindb_webapi', target=app_server.run, daemon=True)
    p_webapi.start()

    logger.info(BANNER.format(corechaindb.config['server']['bind']))

    # start websocket server
    p_websocket_server = Process(name='corechaindb_ws',
                                 target=websocket_server.start,
                                 daemon=True,
                                 args=(exchange.get_subscriber_queue(EventTypes.BLOCK_VALID),))
    p_websocket_server.start()

    p_exchange = Process(name='corechaindb_exchange', target=exchange.run, daemon=True)
    p_exchange.start()

    # We need to import this after spawning the web server
    # because import ABCIServer will monkeypatch all sockets
    # for gevent.
    from abci.server import ABCIServer

    setproctitle.setproctitle('corechaindb')

    # Start the ABCIServer
    abci = ABCI(TmVersion(corechaindb.config['tendermint']['version']))
    if args.experimental_parallel_validation:
        app = ABCIServer(
            app=ParallelValidationApp(
                abci=abci.types,
                events_queue=exchange.get_publisher_queue(),
            )
        )
    else:
        app = ABCIServer(
            app=App(
                abci=abci.types,
                events_queue=exchange.get_publisher_queue(),
            )
        )
    app.run()


if __name__ == '__main__':
    start()
