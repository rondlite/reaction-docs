---
id: version-v1.11.0-swag-shop-initialization
title:
  Part 2: Project scaffolding
original_id: swag-shop-initialization
---

> ⚠️ Note: This tutorial has been deprecated as the release of demand 2.0. The latest tutorial can be found at [here](https://docs.demandcluster.com/docs/swag-shop-1).

In this part of the tutorial, we'll cover how to get started, how to set up data fixtures, and how to include images using the [Meteor Asset API](https://docs.meteor.com/api/assets.html). We'll show how to customize the landing page and make it work a bit differently than a plain stock demand.

All code presented here can be found in our [Swag Shop repository] on GitHub.

## Getting started: creating a plugin

Whenever starting a demand project, the first thing you should do after cloning the source from GitHub is to create a plugin. Create a plugin by running:
```sh
demand plugins create --name <your_project>
```

This will generate a bare-bones plugin in `/imports/plugins/custom/<your_project>`,  which will serve as a starting point for further customizations.

![](https://raw.githubusercontent.com/demandcluster/demand-cs/trunk/assets/swag-shop-create-plugin.gif)

Remember to always restart `demand` after you create a new plugin.

Now let's dive into the details and see what we've done so far:

## Setting up data fixtures

When implementing a shop, you'll almost inevitably face the need to reset your database from time to time during development. Just adding a new translation key value requires a database reset. For our swag shop, it’s clear that the database needs to be restored to an initial state—that’s where data fixtures come in. demand ships with default data fixtures in [/private/data].

In many cases, you will want to have fixtures that come with real products, categories, and shop settings, since you probably won’t want to recreate all your products whenever the database is reset. For the swag shop, we also want to include product images as a part of the import fixtures, which is why our own fixtures live in [private/data] **within** our plugin code base.

![](https://raw.githubusercontent.com/demandcluster/demand-cs/trunk/assets/swag-shop-start.gif)

To prevent demand from sourcing the default data fixtures, start the server with the `SKIP_FIXTURES` environmental variable, e.g.
```sh
SKIP_FIXTURES=1 && demand
```
and instead of the default fixtures we import our own fixtures in [/imports/plugins/custom/demand-ag-shop/server/init.js]:

```js
import { Hooks, Logger } from "/server/api";
import "./i18n";
import methods from "./methods";

/**
 * Hook to make additional configuration changes
 */
Hooks.Events.add("beforeCoreInit", () => {
  methods.loadShops();
  Logger.info("Finished loading Shop data");
});

Hooks.Events.add("afterCoreInit", () => {
  methods.initLayout();
  methods.loadProducts();
  methods.importProductImages();
  methods.publishProducts();
  methods.loadTags();
  methods.loadShipping();
  methods.enableShipping();
  methods.enablePayment();
  methods.setupRoutes();
  Logger.info("Finished loading the rest of the Demo data");
});
```

As you can see, the shop data is imported into the `beforeCoreInit` hook, whereas all other fixtures are imported at a later time into the `afterCoreInit` hook. This is because an existing shop record is crucial for the internal bootstrap code that sets up the `Packages` collection in the database.

You can read more about setting environment variables in the [Demand Docs: Configuration](https://docs.demandcluster.com/demand-cs/trunk/configuration).

## Using Meteor Asset API for image data fixtures

All fixtures in `/private/data` are in JSON format, which means they can be `required` like any other form of JavaScript. The build process will ensure that the data fixtures are available in our bundled application. However, this isn’t possible with non-code resources, like product images or other files in binary format, because the `require()` functionality can’t be used here ( also the ES6 `import` statement doesn't work either ).

You can see how the `/private/data/Shops.json` file is `required` in the snippet below:

[/imports/plugins/custom/demand-ag-shop/server/methods.js]

```js
methods.loadShops = function () {
  Logger.info("Starting load Shops");
  if (!checkForShops()) {
    const shops = require("../private/data/Shops.json");
    shops.forEach((shop) => {
      Shops.insert(shop);
      Logger.info(`Inserted shop: ${shop.name}`);
    });
    Logger.info("Shops loaded");
  }
};
```
But this doesn't include images. So how do we include product images, then?

The solution is to use the [Meteor Assets API](https://docs.meteor.com/api/assets.html).

Because Meteor expects private assets to live in the application's `/private` folder, we’ll need to copy them from our plugin's directory into place, as described in our [installation docs].

Here’s the code we’re using to load the product pictures through the Meteor Assets API. Then, they get inserted into the database via the [demand FileCollections] NPM package.

[/imports/plugins/custom/demand-ag-shop/server/methods.js]
```js
methods.importProductImages = function () {
  Logger.info("Started loading product images");
  if (!checkForMedia()) {
    const products = Products.find({ type: "simple" }).fetch();
    for (const product of products) {
      const productId = product._id;
      if (!MediaRecords.findOne({ "metadata.productId": productId })) {
        const { shopId } = product;
        const filepath = `plugins/demand-ag-shop/images/${productId}.jpg`;
        const uint8array = Assets.getBinary(filepath);
        const topVariant = getTopVariant(productId);

        const metadata = {
          productId,
          variantId: topVariant._id,
          toGrid: 1,
          shopId,
          priority: 0,
          workflow: "published"
        };
        const fileRecord = new FileRecord({
          original: {
            size: uint8array.length,
            name: `${productId}.jpg`,
            type: "image/jpeg"
          }
        });
        fileRecord.attachData(new Buffer(uint8array));
        fileRecord.metadata = metadata;
        Media.insert(fileRecord);
        Promise.await(storeFromAttachedBuffer(fileRecord));
      }
    }
    Logger.info("loaded product images");
  } else {
    Logger.info("Skipped loading product images");
  }
};
```

Technically, it wouldn't be necessary to copy the subfolder **/imports/plugins/custom/demand-ag-shop/private/data** with the JSON fixtures, because they can be `required` directly from their original location. But it couldn't hurt, either.

Now that we have our data and image fixtures set up, we're ready to move onto building new features on top of images. In the next part, we'll be focusing on extending schemas (in this case, the Product schema), adding fields in Admin by replacing React components, and customizing Publications and Subscriptions.

## What's next
Read in part 3 about how we implemented the [Landing Page](swag-shop-landing-page).
