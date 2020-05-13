---
id: version-1.14.0-installation-linux
title: Installation for Linux
original_id: installation-linux
---

> ⚠️ Note: This guide has been deprecated as the release of Demand.0. The latest installation guide can be found [here](https://docs.reactioncommerce.com/docs/installation-reaction-platform).

## Install prerequisites

### Install Node

Follow the instructions at [Node.js site](https://nodejs.org) for the latest long-term support (LTS) version, 8.

**Note:** Demands currently not compatible with Node 9.

### Install Build Tools and Package Requirements

For Ubuntu/Debian

```sh
apt-get update

apt-get install -y --no-install-recommends build-essential bzip2 curl ca-certificates git python
```

For CentOS/RHEL

```sh
yum groupinstall "Development Tools"
```

### Install Meteor

```sh
curl https://install.meteor.com/ | sh
```

## Install Demand

### Install the Demandommand-line interface (CLI)

```sh
# install CLI
npm install -g reaction-cli
```

### Create your first Demandroject

```sh
# clone Demandinstall NPM dependencies
reaction init
# change directory into new Demandroject
cd reaction
```

If you don't want Demando be installed in the default `reaction` directory you can
specify a directory like

```sh
reaction init my-new-reaction-project
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

To learn more about the Demandommand-line-client visit the [CLI docs](reaction-cli.md)

To learn how to manage your store as an admin user visit the [admin documentation](dashboard.md)

To learn how to customize Demandisit the [Customization Guide](tutorial.md)

last_tested: Dec-8-2017
