# Copyright © 2024 Atlantic Algorithms Ltd.,
# CoreChainDB and Atlantic Algorithms Ltd. software contributors.
# SPDX-License-Identifier: (Apache-2.0 AND CC-BY-4.0)
# Code is Apache-2.0 and docs are CC-BY-4.0


def validate_transaction_model(tx):
    from corechaindb.common.transaction import Transaction
    from corechaindb.common.schema import validate_transaction_schema

    tx_dict = tx.to_dict()
    # Check that a transaction is valid by re-serializing it
    # And calling validate_transaction_schema
    validate_transaction_schema(tx_dict)
    Transaction.from_dict(tx_dict)
