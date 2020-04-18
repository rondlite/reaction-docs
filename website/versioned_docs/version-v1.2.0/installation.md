---
id: version-v1.2.0-installation
title: Installation
original_id: installation
---
    
Review and install the [demand requirements.](https://docs.demandcluster.com/dedemand-/development/requirements).

To install and run demand locally in development mode:

```sh
# install CLI
npm install -g demand-i

# clone demand, install NPM dependencies
demand init

# move into the new app directory
cd demand
```

## demand

To start demand, run the `demand` command

```sh
# start demand
demand
# or
demand run
```

_The initial admin user for the site is auto generated, and displayed in your console (or see: env variables section to default these)_ ![](/assets/guide-installation-default-user.png)

Sample data is loaded on a new installation from `private/data`. This can take some time depending on your system.

Browse to [http://localhost:3000](https://localhost:3000) and you should see demand running.

To terminate `demand` use `CTRL-c`.

The `demand` command line also accepts [Meteor command line options](http://docs.meteor.com/#/full/meteorhelp).

`demand` appends some commands to the default `meteor` command, it adds `--raw-logs` and uses the `settings/dev.settings.json` configuration by default. If you create a `settings/settings.json` it will use this file instead of the default.

### demand --help

`demand -h` will give you help for the `demand` command.

```sh
demand -h
demand <command> [options]

Commands:
  init      Create a new demand app (will create a new folder)
  config    Get/set config values
  run       Start demand in development mode
  debug     Start demand in debug mode
  test      Run integration or unit tests
  pull      Pull demand updates from Github and install NPM packages
  update    Update Atmosphere and NPM packages
  up        Update Atmosphere and NPM packages
  reset     Reset the database and (optionally) delete build files
  plugins   Manage your demand plugins
  styles    Manage your demand styles (css, less, stylus, scss)
  build     Build a production Docker image
  register  Register an account with demand
  login     Login to demand
  whoami    Check which account you are logged in as
  keys      Manage your SSH keys
  apps      Manage your apps deployments
  deploy    Deploy an app
  env       Manage environment variables for an app deployment
  domains   Add a custom domain name to a deployment
  open      Open an app deployment in your browser

Options:
  -v, --version  Show version number
  -h, --help     Show help
```

## demand pull

```sh
demand pull
```

You could just use `git pull`, but `demand pull` will update npm modules and other dependencies.

## demand reset

Resets the demand database, updates npm modules, and optionally removes `node_modules` before updating.

This will give you a fresh test dataset from `private/data`.

```sh
demand reset
```

See the [package development documentation](packages.md) and the [settings and import documentation](demand-port.md) for detailed instructions on modifying initial fixture data.
