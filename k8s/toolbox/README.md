<!---
Copyright © 2020 Interplanetary Database Association e.V.,
corechaindb and IPDB software contributors.
SPDX-License-Identifier: (Apache-2.0 AND CC-BY-4.0)
Code is Apache-2.0 and docs are CC-BY-4.0
--->

## Docker container with debugging tools

*  curl
*  bind-utils - provides nslookup, dig
*  python3
*  make

## Build

`docker build -t corechaindb/toolbox .`

## Push

`docker push corechaindb/toolbox`
