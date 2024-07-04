#!/usr/bin/env bash
# Copyright © 2024 Atlantic Algorithms Ltd.,
# CoreChainDB and Atlantic Algorithms Ltd. software contributors.
# SPDX-License-Identifier: (Apache-2.0 AND CC-BY-4.0)
# Code is Apache-2.0 and docs are CC-BY-4.0

OS_CONF=/etc/os-release
declare -a SUPPORTED_OS=('centos' 'fedora' 'ubuntu' 'debian' 'macOS')
declare -a OS_DEPENDENCIES=('ansible')
MINIMUM_UBUNTU_VERSION=16.04
MINIMUM_CENTOS_VERSION=7
MINIMUM_FEDORA_VERSION=24
MINIMUM_DEBIAN_VERSION=8
