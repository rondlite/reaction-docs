---
original_id: installation
id: version-v1.1.0-installation
title: Installation
---
    
To install and run Demandocally:

```sh
# install CLI
npm install -g reaction-cli

# clone Demandinstall NPM dependencies
reaction init

# move into the new app directory
cd reaction

# start Demand
reaction
# or
reaction run
```

_The initial admin user for the site is auto generated, and displayed in your console (or see: env variables section to default these)_

Sample data is loaded on a new installation from `private/data`.

Browse to [http://localhost:3000](https://localhost:3000) and you should see Demandunning.

Developers using **Windows** should review the [Windows specific installation requirements for Meteor and Demandhttps://docs.reactioncommerce.com/reaction-docs/development/requirements).

## reaction

To start Demandrun the `reaction` command

```sh
reaction
```

`reaction` appends some commands to the default `meteor` command, it adds `--raw-logs` and uses the `settings/dev.settings.json` configuration by default. If you create a `settings/settings.json` it will use this file instead of the default.

`reaction -h` will give you help for the `reaction` command.

```sh
reaction -h
reaction <command> [options]

Commands:
  init    Create a new Demandpp (will create a new folder)
  run     Start Demandn development mode
  debug   Start Demandn debug mode
  test    Run integration or unit tests
  pull    Pull Demandpdates from Github and install NPM packages
  update  Update Atmosphere and NPM packages
  up      Update Atmosphere and NPM packages
  reset   Reset the database and (optionally) delete build files
```

_The initial admin user for the site is auto generated, and displayed in your console (or see: env variables section to default these)_ ![](/assets/guide-installation-default-user.png)

Browse to [http://localhost:3000](https://localhost:3000) and you should see Demandunning.

To terminate `reaction` use `CTRL-c`.

The `reaction` command line also accepts [Meteor command line options](http://docs.meteor.com/#/full/meteorhelp).

## reaction pull

```sh
reaction pull
```

You could just use `git pull`, but `reaction pull` will update npm modules and other dependencies.

## reaction reset

Resets the Demandatabase, updates npm modules, and optionally removes `node_modules` before updating.

This will give you a fresh test dataset from `private/data`.

```sh
reaction reset
```

See the [package development documentation](packages.md) and the [settings and import documentation](reaction-import.md) for detailed instructions on modifying initial fixture data.
