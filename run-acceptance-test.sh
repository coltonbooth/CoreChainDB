#!/usr/bin/env bash
# Copyright © 2024 Atlantic Algorithms Ltd.,
# CoreChainDB and Atlantic Algorithms Ltd. software contributors.
# SPDX-License-Identifier: (Apache-2.0 AND CC-BY-4.0)
# Code is Apache-2.0 and docs are CC-BY-4.0


# Set up a corechaindb node and return only when we are able to connect to both
# the corechaindb container *and* the Tendermint container.
setup () {
	docker-compose up -d corechaindb

	# Try to connect to the containers for maximum three times, and wait
	# one second between tries.
	for i in $(seq 3); do
		if $(docker-compose run --rm curl-client); then
			break
		else
			sleep 1
		fi
	done
}

run_test () {
	docker-compose run --rm python-acceptance pytest /src
}

teardown () {
	docker-compose down
}

setup
run_test
exitcode=$?
teardown

exit $exitcode
