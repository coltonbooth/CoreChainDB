#!/bin/bash
# Copyright © 2024 Atlantic Algorithms Ltd.,
# CoreChainDB and Atlantic Algorithms Ltd. software contributors.
# SPDX-License-Identifier: (Apache-2.0 AND CC-BY-4.0)
# Code is Apache-2.0 and docs are CC-BY-4.0


set -e -x

if [[ -z ${TOXENV} ]] && [[ ${corechaindb_CI_ABCI} != 'enable' ]] && [[ ${corechaindb_ACCEPTANCE_TEST} != 'enable' ]]; then
    codecov -v -f htmlcov/coverage.xml
fi
