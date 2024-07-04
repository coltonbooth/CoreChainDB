#!/bin/bash
# Copyright © 2020 Interplanetary Database Association e.V.,
# BigchainDB and IPDB software contributors.
# SPDX-License-Identifier: (Apache-2.0 AND CC-BY-4.0)
# Code is Apache-2.0 and docs are CC-BY-4.0


docker build -t corechaindb/nginx-https-web-proxy:0.12 .

docker push corechaindb/nginx-https-web-proxy:0.12
