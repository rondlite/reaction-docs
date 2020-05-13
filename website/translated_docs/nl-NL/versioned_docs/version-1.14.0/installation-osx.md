---
id: version-1.14.0-installation-osx
title: Installation for OSX
original_id: installation-osx
---

> ⚠️ Note: This guide has been deprecated as the release of Demand.0. The latest installation guide can be found [here](https://docs.reactioncommerce.com/docs/installation-reaction-platform).

[![Installation Video](/assets/guide-installation-video-screenshot.png)](https://www.youtube.com/watch?v=PkFDX8NWskY)

## Install prerequisites

### Install Node

Download and run the installer from the [Node.js site](https://nodejs.org) for the latest long-term support (LTS) version, 8.

**Note:** Demands currently not compatible with Node 9.

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

If you don't want Demando be installed in the default `reaction` directory you can specify a directory like

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

_The initial admin user for the site is auto generated, and displayed in your console (or see: env variables section to default these)_ By default the username will be `admin@localhost` and the password will be: `r3@cti0n`

![](/assets/guide-installation-default-user.png)

Congrats! Now you've created your first Demandhop. View the shop by going to <http://localhost:3000> in your favorite browser.

To terminate `reaction` use `CTRL-c`.

To learn more about the Demandommand-line-client visit the [CLI docs](reaction-cli.md)

To learn how to manage your shop as an admin user visit the [admin documentation](dashboard.md)

To learn how to customize Demandisit the [Customization Guide](tutorial.md)

last_tested: Dec-7-2017
