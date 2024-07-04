#!/bin/bash
# Copyright © 2024 Atlantic Algorithms Ltd.,
# CoreChainDB and Atlantic Algorithms Ltd. software contributors.
# SPDX-License-Identifier: (Apache-2.0 AND CC-BY-4.0)
# Code is Apache-2.0 and docs are CC-BY-4.0


set -e -x

if [[ -n ${TOXENV} ]]; then
  tox -e ${TOXENV}
elif [[ ${corechaindb_CI_ABCI} == 'enable' ]]; then
  docker-compose exec corechaindb pytest -v -m abci
elif [[ ${corechaindb_ACCEPTANCE_TEST} == 'enable' ]]; then
    ./run-acceptance-test.sh
else
  docker-compose exec corechaindb pytest -v --cov=corechaindb --cov-report xml:htmlcov/coverage.xml
fi
