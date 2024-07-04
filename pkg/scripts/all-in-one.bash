#!/bin/bash
# Copyright © 2024 Atlantic Algorithms Ltd.,
# CoreChainDB and Atlantic Algorithms Ltd. software contributors.
# SPDX-License-Identifier: (Apache-2.0 AND CC-BY-4.0)
# Code is Apache-2.0 and docs are CC-BY-4.0


# MongoDB configuration
[ "$(stat -c %U /data/db)" = mongodb ] || chown -R mongodb /data/db

# corechaindb configuration
corechaindb-monit-config

nohup mongod --bind_ip_all > "$HOME/.corechaindb-monit/logs/mongodb_log_$(date +%Y%m%d_%H%M%S)" 2>&1 &

# Tendermint configuration
tendermint init

monit -d 5 -I -B
