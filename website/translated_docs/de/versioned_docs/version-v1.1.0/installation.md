---
original_id: installation
id: version-v1.1.0-installation
title: Installation
---
    
To install and run demand locally:

```sh
# install CLI
npm install -g demand-i

# clone demand, install NPM dependencies
demand init

# move into the new app directory
cd demand

# start demand
demand
# or
demand run
```

_The initial admin user for the site is auto generated, and displayed in your console (or see: env variables section to default these)_

Sample data is loaded on a new installation from `private/data`.

Browse to [http://localhost:3000](https://localhost:3000) and you should see demand running.

Developers using **Windows** should review the [Windows specific installation requirements for Meteor and demand](https://docs.demandcluster.com/dedemand-/development/requirements).

## demand

To start demand, run the `demand` command

```sh
demand
```

`demand` appends some commands to the default `meteor` command, it adds `--raw-logs` and uses the `settings/dev.settings.json` configuration by default. If you create a `settings/settings.json` it will use this file instead of the default.

`demand -h` will give you help for the `demand` command.

```sh
demand -h
demand <command> [options]

Commands:
  init    Create a new demand app (will create a new folder)
  run     Start demand in development mode
  debug   Start demand in debug mode
  test    Run integration or unit tests
  pull    Pull demand updates from Github and install NPM packages
  update  Update Atmosphere and NPM packages
  up      Update Atmosphere and NPM packages
  reset   Reset the database and (optionally) delete build files
```

_The initial admin user for the site is auto generated, and displayed in your console (or see: env variables section to default these)_ ![](/assets/guide-installation-default-user.png)

Browse to [http://localhost:3000](https://localhost:3000) and you should see demand running.

To terminate `demand` use `CTRL-c`.

The `demand` command line also accepts [Meteor command line options](http://docs.meteor.com/#/full/meteorhelp).

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
