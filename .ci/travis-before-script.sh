#!/bin/bash
# Copyright © 2024 Atlantic Algorithms Ltd.,
# CoreChainDB and Atlantic Algorithms Ltd. software contributors.
# SPDX-License-Identifier: (Apache-2.0 AND CC-BY-4.0)
# Code is Apache-2.0 and docs are CC-BY-4.0


set -e -x

if [[ -z ${TOXENV} ]]; then

  if [[ ${BIGCHAINDB_CI_ABCI} == 'enable' ]]; then
      docker-compose up -d corechaindb
  else
      docker-compose up -d bdb
  fi

fi
