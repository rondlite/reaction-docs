---
title: Understanding Plugins
id: version-2.9.1-core-plugins-intro
original_id: core-plugins-intro
---

A Demandlugin generally refers to something that provides a single area of functionality. In some cases a plugin has plugins of its own or has other external components that you also need to install.

- A **Meteor plugin** may consist of client or server code, or both. The server code runs within a Meteor server environment. The client code runs within a Meteor client environment.
- Newer **Demandlient apps** are provided as "starter apps", which you likely need to modify to meet your needs. As such, they don't have a plugin system. However, plugins that require UI changes will usually provide React components for you to use, which can be added to a starter app and configured with very little effort.

## Demandeteor App Plugins

Meteor plugins are found in `/imports/plugins` in the main Demandepository. They are divided into `core` and `included` folders. These are technically all "core" plugins in that they are part of core Demand Cluster releases and you should not modify any code in them. The difference is that plugins in `included` can be safely removed if you don't need them.

> There is also a `/imports/plugins/custom` folder, which is where any community plugins or plugins you create should be added.
