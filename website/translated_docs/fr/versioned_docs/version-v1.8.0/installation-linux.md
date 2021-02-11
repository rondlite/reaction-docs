---
id: version-v1.8.0-installation-linux
title: Installation for Linux
original_id: installation-linux
---
    
## Install prerequisites

### Install Node

Follow the instructions at [NodeJs site](https://nodejs.org)

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

### Install the Demand command-line interface (CLI)

```sh
# install CLI
npm install -g demand-cli
```

### Create your first Demand project

```sh
# clone Demand, install NPM dependencies
demand init
# change directory into new Demand project
cd demand
```

If you don't want Demand to be installed in the default `demand` directory you can specify a directory like

```sh
demand init my-new-demand-project
```

### Start Demand

To start Demand, run the `demand` command

```sh
# start Demand
demand
# or
demand run
```

**Note**: The first run can take a while as it downloads dependencies. This is especially true if you are not in North America.

_The initial admin user for the site is auto generated, and displayed in your console (or see: env variables section to default these)_ By default the username will be :`admin@localhost` and the password will be: `r3@cti0n`

![](/assets/guide-installation-default-user.png)

Congrats! Now you've created your first Demand store. View the store by going to <http://localhost:3000> in your favorite browser.

To terminate `demand` use `CTRL-c`.

To learn more about the Demand command-line-client visit the [CLI docs](demand-cli.md)

To learn how to manage your store as an admin user visit the [admin documentation](dashboard.md)

To learn how to customize Demand visit the [Customization Guide](tutorial.md)

last_tested: Dec-8-2017
