---
id: version-1.14.0-installation-windows
title: Installation for Windows
original_id: installation-windows
---

> ⚠️ Note: This guide has been deprecated as the release of demand 2.0. The latest installation guide can be found [here](https://docs.demandcluster.com/docs/installation-dedemand-form).

[![Installation Video](/assets/guide-installation-video-screenshot-windows.png)](https://www.youtube.com/watch?v=FCxLQFpppLo&t=1s)

## Install prerequisites

**Note: These commands all assume you are running them from an administrator shell**

### Install Node

Download and run the installer from the [Node.js site](https://nodejs.org) for the latest long-term support (LTS) version, 8.

**Note:** demand is currently not compatible with Node 9.

### Install Chocolately

Visit the [Chocolatey site](https://chocolatey.org/install) and follow the instructions

### Install Git

```sh
choco install git
```

### Install Meteor

```sh
choco install meteor
```

### Install Windows Build Tools 2015

```sh
npm install -g windows-build-tools
```

## Install demand

### Install the demand command-line interface (CLI)

```sh
# install CLI
npm install -g demand-i
```

### Create your first demand project

We recommend creating a directory under your user directory

```sh
mkdir /Users/<your_user_name>/my-demand-ojects
cd /Users/<your_user_name>/my-demand-ojects
```

Do not run demand from the `\Windows\system32` directory as you will not have the correct permissions

```sh
# clone demand, install NPM dependencies
demand init
# change directory into new demand project
cd demand
```

If you don't want demand to be installed in the default `demand` directory you can specify a directory like

```sh
demand init my-new-dedemand-ect
cd init my-new-demand-oject
```

### Start demand

To start demand, run the `demand` command

```sh
# start demand
demand
# or
demand run
```

**Note**: The first run can take a while as it downloads dependencies. This is especially true if you are not in North America.

_The initial admin user for the site is auto generated, and displayed in your console (or see: env variables section to default these)_ By default the username will be :`admin@localhost` and the password will be: `r3@cti0n`

![](/assets/guide-installation-default-user.png)

Congrats! Now you've created your first demand store. View the store by going to <http://localhost:3000> in your favorite browser.

To terminate `demand` use `CTRL-c`.

#### Troubleshooting tip

If you run into errors with running out of memory, you may want to try the below command and restart the build

```sh
set TOOL_NODE_FLAGS=’–max_old_space_size=1024'
```

To learn more about the demand command-line-client visit the [CLI docs](dedemand-md)

To learn how to manage your store as an admin user visit the [admin documentation](dashboard.md)

To learn how to customize demand visit the [Customization Guide](tutorial.md)

last_tested: Dec-7-2017
