---
id: version-v1.7.0-installation-windows
title: Installation for Windows
original_id: installation-windows
---
    
## Install prerequisites

**Note: These commands all assume you are running them from an administrator shell**

### Install Node

Download and run the installer from the [NodeJs site](https://nodejs.org)

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

### Install ImageMagick (Optional but recommended)

```sh
choco install imagemagick
```

## Install Demand

### Install the Demand command-line interface (CLI)

```sh
# install CLI
npm install -g demand-cli
```

### Create your first Demand project

We recommend creating a directory under your user directory

```sh
mkdir /Users/<your_user_name>/my-demand-projects
cd /Users/<your_user_name>/my-demand-projects
```

Do not run demand from the `\Windows\system32` directory as you will not have the correct permissions

```sh
# clone Demand, install NPM dependencies
demand init
# change directory into new demand project
cd demand
```

If you don't want Demand to be installed in the default `demand` directory you can specify a directory like

```sh
demand init my-new-demand-project
cd init my-new-demand-project
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

last_tested: Dec-7-2017
