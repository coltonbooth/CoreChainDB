<!---
Copyright © 2020 Interplanetary Database Association e.V.,
corechaindb and IPDB software contributors.
SPDX-License-Identifier: (Apache-2.0 AND CC-BY-4.0)
Code is Apache-2.0 and docs are CC-BY-4.0
--->

This is the packaging metadata for the corechaindb snap.

Snaps and the snap store allows for the secure installation of apps that work
in most Linux distributions. For more information, go to https://snapcraft.io/

To build and install this snap in Ubuntu 16.04:

    $ sudo apt install git snapcraft
    $ git clone https://github.com/corechaindb/corechaindb
    $ cd corechaindb
    $ snapcraft
    $ sudo snap install *.snap --dangerous --devmode
