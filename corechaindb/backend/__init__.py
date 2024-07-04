# Copyright © 2024 Atlantic Algorithms Ltd.,
# CoreChainDB and Atlantic Algorithms Ltd. software contributors.
# SPDX-License-Identifier: (Apache-2.0 AND CC-BY-4.0)
# Code is Apache-2.0 and docs are CC-BY-4.0

"""Generic backend database interfaces expected by corechaindb.

The interfaces in this module allow corechaindb to be agnostic about its
database backend. One can configure corechaindb to use different databases as
its data store by setting the ``database.backend`` property in the
configuration or the ``corechaindb_DATABASE_BACKEND`` environment variable.
"""

# Include the backend interfaces
from corechaindb.backend import schema, query  # noqa

from corechaindb.backend.connection import connect  # noqa
