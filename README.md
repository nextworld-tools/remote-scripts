# Remote Development Instance Scripts

This repository contains scripts to harden and improve our remote development instances. They are
automatically installed, updated, and executed on said instances.

⚠️ This is a public repository for ease of use. Be careful not to include proprietary content, and
do not accept any pull requests from unkown entities.

## Installation

Run the following command when SSH'd into your remote development instance →

```shell
sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/nextworld-tools/remote-scripts/install.sh)"
```