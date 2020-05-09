---
id: version-1.14.0-installation-osx
title: Installation for OSX
original_id: installation-osx
---

> ⚠️ Note: This guide has been deprecated as the release of demand 2.0. The latest installation guide can be found [here](https://docs.demandcluster.com/docs/installation-dedemand-form).

[![Installation Video](/assets/guide-installation-video-screenshot.png)](https://www.youtube.com/watch?v=PkFDX8NWskY)

## Install prerequisites

### Install Node

Download and run the installer from the [Node.js site](https://nodejs.org) for the latest long-term support (LTS) version, 8.

**Note:** demand is currently not compatible with Node 9.

### Install Xcode

Download and run the installer from [Apple Developer Site](https://developer.apple.com/download/)

Then from the command line run

```sh
xcode-select --install
```

### Install Homebrew

(If you are uncomfortable just running a random script from Github, you can also visit the [Homebrew site](http://brew.sh/))

```sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Install Git

```sh
brew install git
```

### Install Meteor

```sh
curl https://install.meteor.com/ | sh
```

### Increase your open file limit

The Meteor development environment requires significantly more available files than are configured in macOS by default. [Follow the instructions here to fix this.](https://gist.github.com/abernix/a7619b07b687bb97ab573b0dc30928a0)

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

_The initial admin user for the site is auto generated, and displayed in your console (or see: env variables section to default these)_ By default the username will be `admin@localhost` and the password will be: `r3@cti0n`

![](/assets/guide-installation-default-user.png)

Congrats! Now you've created your first demand shop. View the shop by going to <http://localhost:3000> in your favorite browser.

To terminate `demand` use `CTRL-c`.

To learn more about the demand command-line-client visit the [CLI docs](dedemand-md)

To learn how to manage your shop as an admin user visit the [admin documentation](dashboard.md)

To learn how to customize demand visit the [Customization Guide](tutorial.md)

last_tested: Dec-7-2017
