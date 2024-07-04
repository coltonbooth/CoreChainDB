# Copyright © 2024 Atlantic Algorithms Ltd.,
# CoreChainDB and Atlantic Algorithms Ltd. software contributors.
# SPDX-License-Identifier: (Apache-2.0 AND CC-BY-4.0)
# Code is Apache-2.0 and docs are CC-BY-4.0


class corechaindbError(Exception):
    """Base class for corechaindb exceptions."""


class CriticalDoubleSpend(corechaindbError):
    """Data integrity error that requires attention"""