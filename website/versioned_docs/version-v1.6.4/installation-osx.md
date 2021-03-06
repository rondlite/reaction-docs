---
id: version-v1.6.4-installation-osx
title: Installation for OSX
original_id: installation-osx
---
    
[![Installation Video](/assets/guide-installation-video-screenshot.png)](https://www.youtube.com/watch?v=PkFDX8NWskY)

## Install prerequisites:

### Install Node
Download and run the installer from the [NodeJs site](https://nodejs.org)

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
````

### Install Meteor

```sh
curl https://install.meteor.com/ | sh
```

### Increase your open file limit

The Meteor development environment requires significantly more available files than are configured in macOS by default.

See: <http://stackoverflow.com/a/27982223>

Increase your file limits with these `terminal` commands.

```sh
echo kern.maxfiles=65536 | sudo tee -a /etc/sysctl.conf
echo kern.maxfilesperproc=65536 | sudo tee -a /etc/sysctl.conf
sudo sysctl -w kern.maxfiles=65536
sudo sysctl -w kern.maxfilesperproc=65536
ulimit -n 65536 65536
echo "ulimit -n 65536 65536" >> .bashrc
source .bashrc
```

### Install ImageMagick (Optional but recommended)

ImageMagick is used for image resizing on upload. So generally if you are going to use images you need it.

```sh
brew install imagemagick
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

**Note that the first run can take a while as it downloads dependencies. This is especially true if you are not in North America**

_The initial admin user for the site is auto generated, and displayed in your console (or see: env variables section to default these)_

By default the username will be :`admin@localhost` and the password will be: `r3@cti0n`

![](/assets/guide-installation-default-user.png)


Congrats! Now you've created your first Demandtore. View the store by going to http://localhost:3000 in your favorite browser.

To terminate `reaction` use `CTRL-c`.

To learn how to manage your store as an admin user visit the [admin documentation](dashboard.md)

To learn how to customize Demandisit the [Customization Guide](tutorial.md)

last_tested: Dec-7-2017
