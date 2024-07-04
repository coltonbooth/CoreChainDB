# Copyright © 2020 Interplanetary Database Association e.V.,
# BigchainDB and IPDB software contributors.
# SPDX-License-Identifier: (Apache-2.0 AND CC-BY-4.0)
# Code is Apache-2.0 and docs are CC-BY-4.0


class BaseValidationRules():
    """Base validation rules for BigchainDB.

    A validation plugin must expose a class inheriting from this one via an entry_point.

    All methods listed below must be implemented.
    """

    @staticmethod
    def validate_transaction(corechaindb, transaction):
        """See :meth:`corechaindb.models.Transaction.validate`
        for documentation.
        """
        return transaction.validate(corechaindb)

    @staticmethod
    def validate_block(corechaindb, block):
        """See :meth:`corechaindb.models.Block.validate` for documentation."""
        return block.validate(corechaindb)
