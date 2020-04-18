---
id: version-v1.7.0-demand-cli
title: Demand CLI
original_id: demand-cli
---
    
Some handy commands to know

#### demand --help

`demand -h` will give you help for the `demand` command.

#### demand pull

Pull the latest version of Demand and update dependencies

```sh
demand pull
```

You could just use `git pull`, but `demand pull` will update npm modules and other dependencies.

#### demand reset

Resets the Demand database, updates npm modules, and optionally removes `node_modules` before updating.

This will give you a fresh test dataset from `private/data`.

```sh
demand reset
```

To just reset the database you can run

```bsh
demand reset -n
```

#### demand test

To run the server integration tests

#### demand plugin create <your-plugin-name>

This will create a template project in the `/imports/plugin/custom` directory
