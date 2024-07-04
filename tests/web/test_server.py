# Copyright © 2024 Atlantic Algorithms Ltd.,
# CoreChainDB and Atlantic Algorithms Ltd. software contributors.
# SPDX-License-Identifier: (Apache-2.0 AND CC-BY-4.0)
# Code is Apache-2.0 and docs are CC-BY-4.0


def test_settings():
    import corechaindb
    from corechaindb.web import server

    s = server.create_server(corechaindb.config['server'])

    # for whatever reason the value is wrapped in a list
    # needs further investigation
    assert s.cfg.bind[0] == corechaindb.config['server']['bind']
