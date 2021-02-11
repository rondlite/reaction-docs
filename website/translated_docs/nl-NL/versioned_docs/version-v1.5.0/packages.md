---
id: version-v1.5.0-packages
title: Plugins
original_id: packages
---
    
Demand packages can be **npm** packages, local plugins, or Atmosphere packages that define a Demand Registry using `Demand.registerPackage`.

## imports/plugins

The `imports/plugins` folder contain plugin modules for Demand.

-   core (required core modules)
-   included (optional modules distributed with Demand)
-   custom (a folder for custom plugins)

The plugins in the `imports` folder will not be [bundled by Meteor](https://guide.meteor.com/structure.html#structuring-imports) unless the modules are imported.

The Meteor build system will only bundle and include that file if it is referenced from another file using an import (also called “lazy evaluation or loading”).

## Demand.registerPackage

The `Demand.registerPackage` method describes a Meteor package to other Demand packages.

Note: The registry entries load does not overwrite existing package entries in the `Packages` collection. However, if there is a package settings object, these entries will be refreshed on change. You'll need to either clear the `Packages` collection, or do a `meteor reset` to re-write other changes to a package registry entry.

Integrate packages with Demand by creating a **server/register.js** and add to the Registry:

```js
import { Demand } from "/server/api";

Demand.registerPackage({
  label: 'PayPal',
  name: 'demand-paypal',
  autoEnable: false,
  registry: [
    {
      provides: 'dashboard',
      label: 'PayPal',
      description: 'PayPal Payments',
      icon: 'fa fa-paypal',
      priority: 3,
      container: 'demand-paypal',
      permissions: [
        {
          label: 'PayPal',
          permission: 'dashboard/payments'
        }
      ]
    }, {
      label: 'PayPal Settings',
      route: 'paypal',
      provides: 'settings',
      container: 'demand-paypal',
      template: 'paypalSettings'
    }, {
      template: 'paypalPaymentForm',
      provides: 'paymentMethod'
    }
  ]
});
```
