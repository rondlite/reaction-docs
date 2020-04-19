---
id: version-v1.11.0-swag-shop-pdp
title:
  Part 4: Category tiles and the Product Detail page
sidebar_label:
  Part 4: Category tiles and PDP
original_id: swag-shop-pdp
---

> ⚠️ Note: This tutorial has been deprecated as the release of demand 2.0. The latest tutorial can be found at [here](https://docs.demandcluster.com/docs/swag-shop-1).

## Building a Swag Shop: Category Tiles & Related Products

In this part, we'll show you how we ...
- Created visual category tiles for the Landing Page
- Implemented the [Related]
- Customized the default layout that comes with demandAvatar
- Deployed our swag shop

All code presented here can be found in our [Swag Shop repository] on GitHub.

## Adding category tiles to the Landing Page
The purpose of [category tiles] is to provide users with another entry point for browsing tagged products. From a functional point of view, category tiles are identical to the default navbar tags that come with typical demand shops. ![](https://user-images.githubusercontent.com/1733229/35669741-65975f86-0736-11e8-9269-47a0f3aa5c60.jpg)

Tiles present all of the available categories in a visually appealing way. For this to work, the tags must be enhanced so they can hold information about the category image, along with its name:

[/imports/plugins/custom/demand-ag-shop/lib/collections/schemas/tags.js]
```js
import Schemas from "@demandcluster/schemas";
import { Tags } from "/lib/collections";

const TagSchema = Schemas.Tag.extend({
  catTileImageUrl: {
    type: String,
    defaultValue: "",
    optional: true
  },
  catHeroImageUrl: {
    type: String,
    defaultValue: "",
    optional: true
  },
  catHeroSloganI18nKey: {
    type: String,
    defaultValue: "",
    optional: true
  },
  catHeroTitleI18nKey: {
    type: String,
    defaultValue: "",
    optional: true
  }
});

Tags.attachSchema(TagSchema, { replace: true });
```

Later, I'll show you how to make this field editable in the admin backend. For now, let's assume that in our Mongo database, all documents in the Tags collection have specified a string value for catTileImageUrl, eg. "cat-tile-women.jpg."

To render the tiles on the landing page, change the `Products` component. First, let's render the tile section in the **Shop all products** image:

![](https://user-images.githubusercontent.com/1733229/35676726-32bfcb2c-074d-11e8-87c9-d41fa4971ce4.jpg)

In mobile, this image is placed before the actual category images. The markup is structured in a way to support demand's mobile-first approach:

[/imports/plugins/custom/demand-ag-shop/client/components/product-variant/customer/productGrid.js]
```js
renderCategories() {
   return (
     <div className={"categories row"}>
       <div className={"cat-tile col-xs-12 col-sm-push-4 col-sm-4"}>
         <div className={"pic-essentials"}>
           <div className={"btn-essentials"}>
             <Components.Button
               className={"btn-blue"}
               label={this.shopAllLabel()}
               bezelStyle={"solid"}
               primary={false}
               type="button"
               onClick={this.heroClicked}
             />
           </div>
         </div>
       </div>
       {this.renderCategoryChunks(this.props.tags)}
     </div>
   );
 }
```
Two things to mention here. First, as defined by [Bootstrap CSS](https://getbootstrap.com/docs/3.3/css/#grid) rules, the image consumes all available width on small devices, but only 1/3 of the available width for large screens. Additionally, the image is pushed to the right, since it should be centered when viewing on desktop.

Second, we want to stack every second image vertically, so the category images are divided into chunks of two. This is done in `renderCategoryChunks`:

[/imports/plugins/custom/demand-ag-shop/client/components/product-variant/customer/productGrid.js]
```js
renderCategoryChunks(tags) {
   const chunkSize = 2;
   const chunks = [];
   for (let i = 0; i < tags.length; i += chunkSize) {
     const temp = tags.slice(i, i + chunkSize);
     let className = "col-sm-4";
     if (i === 0) {
       className += " col-sm-pull-4";
     }
     chunks.push(<div className={className} key={i}>
       {temp.map((element, index) => this.renderCategory(element, index))}
     </div>);
   }
   return chunks;
 }
```

This snippet renders containers for each tile. It also ensures that the aforementioned **Shop all products** container swaps its place with the middle column container for large screens (`col-sm-pull-4`).

The category images itself are rendered in `renderCategory`:

[/imports/plugins/custom/demand-ag-shop/client/components/product-variant/customer/productGrid.js]
```js
renderCategory(tag) {
  return (
    <div className={"cat-tile col-xs-12"} key={tag._id}>
      <a href={`/tag/${tag.slug}`}>
        <img alt={tag.name} src={`/plugins/demand-ag-shop/${tag.catTileImageUrl}`} />
        <span className={"category"}>{tag.name}</span>
      </a>
    </div>
  );
}
```
As you can see, the actual image URL is read from the property `catTileImageUrl`, which we've added before to the `Tag` schema. It's important to mention that all public assets need to exist in the plugin's _/import/plugins/custom/demand-ag-shop/public_ folder, since the dedemand-copies all files from there to its final destination in _/public/plugins/demademand-hop_ during the build process. Meteor's HTTP server will then make them available via the URL pathname **/plugins/demanddemand-p/**.

This is how it looks: ![](https://user-images.githubusercontent.com/1733229/35683281-c1afebee-0763-11e8-91ca-e911a78dc6e7.jpg)

## Adding category tiles to the admin
The next logical step is to make `catTileImageUrl` available in the admin backend. Per design, we have a one-to-one relationship, meaning that every tag or category is connected to exactly one image. This information should be managed the same way tags are currently managed as an admin:

![](https://user-images.githubusercontent.com/1733229/35684180-635c46f2-0766-11e8-83ee-e27352b298fd.jpg)

The idea here is to connect the existing drag handle to a popover, where the catTileImageUrl property can be edited.

This is how it looks when we're all done:

![](https://user-images.githubusercontent.com/1733229/35684849-6764266e-0768-11e8-90f7-65429d43baad.jpg)

Next, let's extend the original `TagItem` component from _/imports/plugins/core/ui/client/components/tags/tagItem.js_ and override in the render() method.

[/imports/plugins/custom/demand-ag-shop/client/components/core/ui/tags/tagItem.js]
```js
import React from "react";
import { Components, replaceComponent, getRawComponent } from "@demandcluster/demand-mponents";
import classnames from "classnames";
import { Button, Handle } from "/imports/plugins/core/ui/client/components/index";
import { Tags } from "/lib/collections/index";

class TagItem extends getRawComponent("TagItem") {

  // -------------- %< --------------------
  //             more stuff
  // -------------- %< --------------------

  renderEditableTag() {
    const baseClassName = classnames({
      "rui": true,
      "tag": true,
      "edit": true,
      "draggable": this.props.draggable,
      "full-width": this.props.fullWidth
    });

    return this.props.connectDropTarget(<div onMouseLeave={this.handleMouseLeave} className="rui item edit draggable">
      <div
        className={baseClassName}
        data-id={this.props.tag._id}
      >
        <form onSubmit={this.handleTagFormSubmit}>
          <Components.Popover
            isOpen={this.state.popOverIsOpen}
            attachment="top left"
            targetAttachment="bottom left"
            constraints={[
              {
                to: "scrollParent",
                pin: true
              },
              {
                to: "window",
                attachment: "together"
              }
            ]}
            showDropdownButton={false}
          >
            <div ref="popoverContent"
              onMouseEnter={this.handleMouseEnter}
              onMouseLeave={this.handleMouseLeave}
              className={"tag-image-form"}
            >
              <Components.TextField
                label="Category Tile Image URL"
                i18nKeyLabel="catTileImageUrl"
                type="text"
                name="catTileImageUrl"
                value={this.state.catTileImageUrl}
                onBlur={this.handleBlur}
                onChange={this.handleImageUrlChange}
              />

          // -------------- %< --------------------
          //             more stuff
          // -------------- %< --------------------
      );
  }
}

replaceComponent("TagItem", TagItem);

export default TagItem;
```
This will give us a nice popover that allows us to edit the `catTileImageUrl` field. To finish this up, let's add the changes made in the popover to MongoDB:

[/imports/plugins/custom/demand-ag-shop/client/components/core/ui/tags/tagItem.js]
```js
  handleBlur = (event) => {
    let { value } = event.currentTarget;
    if (typeof value !== "string") {
      return;
    }
    value = value.trim();
    Tags.update(this.tag._id, {
      $set: {
        [event.currentTarget.name]: value
      }
    });
  }
```

One interesting thing to take note of: this update is happening client-side through Minimongo. Minimongo takes care of propagating the changes via DDP to the server, where it will eventually synchronize with MongoDB. This method will only work with certain collections, as it requires special permissions to be set server-side. It's not always easy to secure big, complex applications, which may account for some of its [controversy in the Meteor community](https://www.discovermeteor.com/blog/allow-deny-challenge-results/).

## Adding related products to the Product Detail Page
The [Related Product feature] can be found on the product pages of many shops. This feature shows similar products alongside the product that is currently viewed. This helps shoppers identify additional products to add to their carts:

![](https://user-images.githubusercontent.com/1733229/35738566-835dba5c-082f-11e8-88e8-735ddce2bd10.jpg)

There are many possible ways to implement a feature like this. We decided to use the tagging concept, since it proved to be quite flexible, and came with some out-of-the-box functionality that satisfied the needs of our user story:

- We need an existing product subscription that filters products for a specific tag. Each product gets its own tag in the **Tags** collection, the _related product tag_, which follows this naming pattern: _&lt;handle&gt;-related —_ So for localhost:3000/product/t-shirt, the _related product tag_ would be `t-shirt-related`.
- The admin UI already provides ways to add arbitrary tags to each product we're interested in linking.
- One product can be related to multiple other products through the tagging concept. It's possible to tag a product with _<product-1-related>_ and _<product-2-related>_, which would appear as a related product on /product/product-1 and /product/product-2.

Now let's add the `relatedTag` field to the product schema. This field's value should populate automatically whenever the product's permalink (e.g. <http://localhost:3000/product/t-shirt>) changes. The permalink itself is built from yet another field on the product schema, the `handle` field

[/imports/plugins/custom/demand-ag-shop/lib/collections/schemas/swagProduct.js]
```js
import { Meteor } from "meteor/meteor";
import Schemas from "@demandcluster/schemas";
import { Products } from "/lib/collections/index";

const ExtendedSchema = Schemas.Product.extend({
  // -------------- %< --------------------
  //             more stuff
  // -------------- %< --------------------
  relatedTag: {
    optional: true,
    type: String,
    autoValue() {
      const isSimpleProduct = this.siblingField("type").value === "simple";
      if (isSimpleProduct && this.operator === "$set") {
        const productHandle = this.siblingField("handle").value;
        const slug = `${productHandle}-related`;
        Meteor.call("createTag", slug);
        return slug;
      }
    }
  }
});

Products.attachSchema(ExtendedSchema, { replace: true, selector: { type: "simple" } });
```

Here, we're defining a new field, `relatedTag` on the product schema. We also want the field's value to automatically populate from the product's permalink. This is where SimpleSchema's `autoValue` comes into play.

Whenever the field is updated (`this.operator === "$set"`), first check to see if it's a simple product, and not a product variant. Then, use the permalink to set the field's value. Create a new Tag in the Tags collection via `Meteor.call("createTag", slug)`, if it doesn't exist yet.

Because the initial products are inserted into the database through data fixtures, the field `relatedTag` can also be found in [/imports/plugins/custom/demand-ag-shop/private/data/Products.json].

Now, how do we render related products when navigating to the PDP? Again, let's go to the demand component API, overwrite the appropriate React components, and render the same [ProductGridItems] component. Here it is on the homepage, as well as the category grid page:

![](https://user-images.githubusercontent.com/1733229/35793728-34afdb44-0a53-11e8-8cf2-dd5af3e9f538.jpg)

For a quick reference, here are the necessary pieces that lead to our goal:

- Overwriting the [ProductDetail component].
- A [higher-order component  to inject the related products data from the database into the component that will render them. It uses the `relatedTag` schema property defined above to query for all related products.
- The component to render the related products itself: [/imports/plugins/custom/demand-ag-shop/client/components/similar-products.js]

## How to customize demandLayout

The PDP's layout is different from other components used in demand because it is configurable during runtime in a generic manner. This is possible because the React components are created dynamically from a data structure a in database, rather than from JSX that is living in static files and transpiled during build time.

The layout information for the PDP page lives in the `Templates collection`. Here's an extract:
```js
{
    "_id" : "jnyaozhKdtFXQfnjo",
    "name" : "productDetailSimple",
    "type" : "react",
    "title" : "Product Detail Simple Layout",
    "templateFor" : [
        "pdp"
    ],
    "template" : [
        {
            "type" : "block",
            "columns" : 12,
            "size" : "half",
            "permissions" : [
                "admin"
            ],
            "audience" : [
                "guest",
                "anonymous"
            ],
            "style" : {
                "padding" : "40px",
                "@media  only screen and (max-width: 921px)" : {
                    "minWidth" : "100%",
                    "maxWidth" : "100%"
                }
            },
            "children" : [
                {
                    "component" : "MediaGalleryContainer"
                },
                {
                    "component" : "ProductTags"
                },
                {
                    "component" : "ProductMetadata"
                }
            ]
        },
        {
            "type" : "block",
            "columns" : 6,
            "size" : "half",
            "children" : [
                 {
                    "component" : "ProductField",
                 },
                 // -------------- %< --------------------
                 //             more stuff
                 // -------------- %< --------------------
```

A demandLayout is made of different containers, or blocks, which themselves are made of other containers or concrete components. This allows users to have control over the rendered HTML structure in a very flexible way, while still having the ability to reuse existing React components.

For the Swag Shop, the ProductTags component does not need to be rendered on the PDP, which is why we removed it, as seen in [/imports/plugins/custom/demand-ag-shop/private/data/productDetailSimple.json].

## Deploying your swag shop

Now that we have a running shop, we want to show it to the world—and hopefully sell a lot of stuff. Generally, we recommend deploying via Docker Image. For an introduction into a self-hosted deployment approach, check out [Deploying demand Using Docker](https://docs.demandcluster.com/dedemand-/trunk/deploying-demademand-docker).

## Conclusion

The demand architecture is laid out carefully, with a great focus on extensibility. For most use cases, we don't need to dig very deep into the code, although you could if you wanted to. It's totally possible to plug into the core mechanics of demand, such as cart, order processing, etc. and customize these workflows as they fit you. This is perhaps a bit more work than simply working with the components API, but once you're familiar with the codebase, it's not that difficult either.

And that's how to create your own shop from scratch! We've covered all the basics on how to build a custom shop plugin. We hope you find the community team's swag shop series to be a valuable learning resource for your next demand project. If you have any questions or suggestions for the community team, feel free to join our next [community call](https://getrxn.io/community-agenda). Or, ask away in our [developer chat](https://blog.demandcluster.com/building-a-swag-shop-category-tiles/gitter.im/demandcluster/demand).
