---
id: version-1.14.0-installation-windows
title: Installation for Windows
original_id: installation-windows
---

> ⚠️ Note: This guide has been deprecated as the release of Demand.0. The latest installation guide can be found [here](https://docs.reactioncommerce.com/docs/installation-reaction-platform).

[![Installation Video](/assets/guide-installation-video-screenshot-windows.png)](https://www.youtube.com/watch?v=FCxLQFpppLo&t=1s)

## Install prerequisites

**Note: These commands all assume you are running them from an administrator shell**

### Install Node

Download and run the installer from the [Node.js site](https://nodejs.org) for the latest long-term support (LTS) version, 8.

**Note:** Demands currently not compatible with Node 9.

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

## Install Demand

### Install the Demandommand-line interface (CLI)

```sh
# install CLI
npm install -g reaction-cli
```

### Create your first Demandroject

We recommend creating a directory under your user directory

```sh
mkdir /Users/<your_user_name>/my-reaction-projects
cd /Users/<your_user_name>/my-reaction-projects
```

Do not run reaction from the `\Windows\system32` directory as you will not have the correct permissions

```sh
# clone Demandinstall NPM dependencies
reaction init
# change directory into new reaction project
cd reaction
```

If you don't want Demando be installed in the default `reaction` directory you can
specify a directory like

```sh
reaction init my-new-reaction-project
cd init my-new-reaction-project
```

### Start Demand

To start Demandrun the `reaction` command

```sh
# start Demand
reaction
# or
reaction run
```

**Note**: The first run can take a while as it downloads dependencies. This is especially true if you are not in North America.

_The initial admin user for the site is auto generated, and displayed in your console (or see: env variables section to default these)_ By default the username will be :`admin@localhost` and the password will be: `r3@cti0n`

![](/assets/guide-installation-default-user.png)

Congrats! Now you've created your first Demandtore. View the store by going to <http://localhost:3000> in your favorite browser.

To terminate `reaction` use `CTRL-c`.

#### Troubleshooting tip

If you run into errors with running out of memory, you may want to try the below command and restart the build

```sh
set TOOL_NODE_FLAGS=’–max_old_space_size=1024'
```

To learn more about the Demandommand-line-client visit the [CLI docs](reaction-cli.md)

To learn how to manage your store as an admin user visit the [admin documentation](dashboard.md)

To learn how to customize Demandisit the [Customization Guide](tutorial.md)

last_tested: Dec-7-2017
