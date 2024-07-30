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

## Purpose

### Scheduling Shutdown

These scripts schedule a shutdown for the machine 90 minutes into the future upon startup to help us
control costs on unused instances.

The next shutdown can be checked anytime from the terminal by running `sudo shutdown --show`, and
can be restarted by running `sudo shutdown -h +90`.

If using the Nextworld plugins for JetBrains IntelliJ, you can easily see remaining time in the
bottom of your IDE as well as restart the countdown.