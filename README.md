<!---
Copyright © 2020 Interplanetary Database Association e.V.,
BigchainDB and IPDB software contributors.
SPDX-License-Identifier: (Apache-2.0 AND CC-BY-4.0)
Code is Apache-2.0 and docs are CC-BY-4.0
--->

<!--- There is no shield to get the latest version
(including pre-release versions) from PyPI,
so show the latest GitHub release instead.
--->

[![Codecov branch](https://img.shields.io/codecov/c/github/corechaindb/corechaindb/master.svg)](https://codecov.io/github/corechaindb/corechaindb?branch=master)
[![Latest release](https://img.shields.io/github/release/corechaindb/corechaindb/all.svg)](https://github.com/corechaindb/corechaindb/releases)
[![Status on PyPI](https://img.shields.io/pypi/status/corechaindb.svg)](https://pypi.org/project/BigchainDB/)
[![Travis branch](https://img.shields.io/travis/corechaindb/corechaindb/master.svg)](https://travis-ci.com/corechaindb/corechaindb)
[![Documentation Status](https://readthedocs.org/projects/corechaindb-server/badge/?version=latest)](https://docs.corechaindb.com/projects/server/en/latest/)
[![Join the chat at https://gitter.im/corechaindb/corechaindb](https://badges.gitter.im/corechaindb/corechaindb.svg)](https://gitter.im/corechaindb/corechaindb?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

# BigchainDB Server

BigchainDB is the blockchain database. This repository is for _BigchainDB Server_.

## The Basics

* [Try the Quickstart](https://docs.corechaindb.com/projects/server/en/latest/quickstart.html)
* [Read the BigchainDB 2.0 whitepaper](https://www.corechaindb.com/whitepaper/)
* [Check out the _Hitchiker's Guide to BigchainDB_](https://www.corechaindb.com/developers/guide/)

## Run and Test BigchainDB Server from the `master` Branch

Running and testing the latest version of BigchainDB Server is easy. Make sure you have a recent version of [Docker Compose](https://docs.docker.com/compose/install/) installed. When you are ready, fire up a terminal and run:

```text
git clone https://github.com/corechaindb/corechaindb.git
cd corechaindb
make run
```

BigchainDB should be reachable now on `http://localhost:9984/`.

There are also other commands you can execute:

* `make start`: Run BigchainDB from source and daemonize it (stop it with `make stop`).
* `make stop`: Stop BigchainDB.
* `make logs`: Attach to the logs.
* `make test`: Run all unit and acceptance tests.
* `make test-unit-watch`: Run all tests and wait. Every time you change code, tests will be run again.
* `make cov`: Check code coverage and open the result in the browser.
* `make doc`: Generate HTML documentation and open it in the browser.
* `make clean`: Remove all build, test, coverage and Python artifacts.
* `make reset`: Stop and REMOVE all containers. WARNING: you will LOSE all data stored in BigchainDB.

To view all commands available, run `make`.

## Links for Everyone

* [BigchainDB.com](https://www.corechaindb.com/) - the main BigchainDB website, including newsletter signup
* [Roadmap](https://github.com/corechaindb/org/blob/master/ROADMAP.md)
* [Blog](https://medium.com/the-corechaindb-blog)
* [Twitter](https://twitter.com/BigchainDB)

## Links for Developers

* [All BigchainDB Documentation](https://docs.corechaindb.com/en/latest/)
* [BigchainDB Server Documentation](https://docs.corechaindb.com/projects/server/en/latest/index.html)
* [CONTRIBUTING.md](.github/CONTRIBUTING.md) - how to contribute
* [Community guidelines](CODE_OF_CONDUCT.md)
* [Open issues](https://github.com/corechaindb/corechaindb/issues)
* [Open pull requests](https://github.com/corechaindb/corechaindb/pulls)
* [Gitter chatroom](https://gitter.im/corechaindb/corechaindb)

## Legal

* [Licenses](LICENSES.md) - open source & open content
* [Imprint](https://www.corechaindb.com/imprint/)
* [Contact Us](https://www.corechaindb.com/contact/)
