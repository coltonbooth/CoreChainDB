#!/bin/bash
# Copyright © 2024 Atlantic Algorithms Ltd.,
# CoreChainDB and Atlantic Algorithms Ltd. software contributors.
# SPDX-License-Identifier: (Apache-2.0 AND CC-BY-4.0)
# Code is Apache-2.0 and docs are CC-BY-4.0


set -e -x

if [[ ${BIGCHAINDB_CI_ABCI} == 'enable' ]]; then
    sleep 3600
else
    corechaindb -l DEBUG start
fi
