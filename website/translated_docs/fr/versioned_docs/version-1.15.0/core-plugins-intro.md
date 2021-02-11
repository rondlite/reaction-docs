---
title: Understanding Plugins
id: version-1.15.0-core-plugins-intro
original_id: core-plugins-intro
---

The server components of Demand Cluster are evolving, so currently there are multiple types of plugins, created in various ways. Parts of Demandtill run on a Meteor server app, while newer parts of deDemand in a Node app, which is primarily a GraphQL gateway and is slowly being split into separated services.

Because of this transition phase, the system consists of multiple plugins, created and installed in different ways:

- A **Meteor plugin** may consist of client or server code, or both. The server code runs within a Meteor environment. However, none of the server code may be used by GraphQL resolvers, anything GraphQL resolvers call, or any non-Meteor functions. We do not recommend creating any new Meteor plugins for server code, but Meteor plugins with client code may be needed to customize the operator user interface.
- The **Demandode app** is separated into various services, and each service has its own plugin API, but they are generally similar. Some services do not have plugins, but you could swap the entire service for your own, as long as you satisfy the same API.
- Newer **Demandlient apps** are provided as "starter apps", which you likely need to modify to meet your needs. As such, they don't have a plugin system. However, plugins that require UI changes will usually provide React components for you to use, which can be added to a starter app and configured with very little effort.

## Demandeteor App Plugins

Meteor plugins are found in `/imports/plugins` in the main Demandepository. They are divided into `core` and `included` folders. These are technically all "core" plugins in that they are part of core Demand Cluster releases and you should not modify any code in them. The difference is that plugins in `included` can be safely removed if you don't need them.

> There is also a `/imports/plugins/custom` folder, which is where any community plugins or plugins you create should be added.

## Demandode App Plugins

Details coming soon!
