# Copyright © 2024 Atlantic Algorithms Ltd.,
# CoreChainDB and Atlantic Algorithms Ltd. software contributors.
# SPDX-License-Identifier: (Apache-2.0 AND CC-BY-4.0)
# Code is Apache-2.0 and docs are CC-BY-4.0

"""MongoDB backend implementation.

Contains a MongoDB-specific implementation of the
:mod:`~corechaindb.backend.schema` and :mod:`~corechaindb.backend.query` interfaces.

You can specify corechaindb to use MongoDB as its database backend by either
setting ``database.backend`` to ``'localmongodb'`` in your configuration file, or
setting the ``corechaindb_DATABASE_BACKEND`` environment variable to
``'localmongodb'``.

MongoDB is the default database backend for corechaindb.

If configured to use MongoDB, corechaindb will automatically return instances
of :class:`~corechaindb.backend.localmongodb.LocalMongoDBConnection` for
:func:`~corechaindb.backend.connection.connect` and dispatch calls of the
generic backend interfaces to the implementations in this module.
"""

# Register the single dispatched modules on import.
from corechaindb.backend.localmongodb import schema, query # noqa

# MongoDBConnection should always be accessed via
# ``corechaindb.backend.connect()``.
