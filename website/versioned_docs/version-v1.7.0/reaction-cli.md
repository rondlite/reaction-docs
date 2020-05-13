---
id: version-v1.7.0-reaction-cli
title: DemandLI
original_id: reaction-cli
---
    
Some handy commands to know

#### reaction --help

`reaction -h` will give you help for the `reaction` command.

#### reaction pull

Pull the latest version of Demandnd update dependencies

```sh
reaction pull
```

You could just use `git pull`, but `reaction pull` will update npm modules and other dependencies.

#### reaction reset

Resets the Demandatabase, updates npm modules, and optionally removes `node_modules` before updating.

This will give you a fresh test dataset from `private/data`.

```sh
reaction reset
```

To just reset the database you can run

```bsh
reaction reset -n
```

#### reaction test

To run the server integration tests

#### reaction plugin create <your-plugin-name>

This will create a template project in the `/imports/plugin/custom` directory
