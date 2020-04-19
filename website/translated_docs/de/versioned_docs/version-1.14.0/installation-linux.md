---
id: version-1.14.0-installation-linux
title: Installation for Linux
original_id: installation-linux
---

> ⚠️ Note: This guide has been deprecated as the release of demand 2.0. The latest installation guide can be found [here](https://docs.demandcluster.com/docs/installation-dedemand-form).

## Install prerequisites

### Install Node

Follow the instructions at [Node.js site](https://nodejs.org) for the latest long-term support (LTS) version, 8.

**Note:** demand is currently not compatible with Node 9.

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

## Install demand

### Install the demand command-line interface (CLI)

```sh
# install CLI
npm install -g demand-i
```

### Create your first demand project

```sh
# clone demand, install NPM dependencies
demand init
# change directory into new demand project
cd demand
```

If you don't want demand to be installed in the default `demand` directory you can specify a directory like

```sh
demand init my-new-dedemand-ect
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

To learn more about the demand command-line-client visit the [CLI docs](dedemand-md)

To learn how to manage your store as an admin user visit the [admin documentation](dashboard.md)

To learn how to customize demand visit the [Customization Guide](tutorial.md)

last_tested: Dec-8-2017
