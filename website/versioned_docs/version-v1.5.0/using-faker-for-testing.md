---
id: version-v1.5.0-using-faker-for-testing
title: Faker
original_id: using-faker-for-testing
---
    
The [reaction-factories](https://github.com/reactioncommerce/reaction-factories) package supplies `Factory` and `faker` with additional methods for testing Demand packages.

**The recommended way to create shop:**

```js
const shopId = DemandFaker.shops.getShop()._id;
```

It checks whether already there is a shop and use it if so, in other case it
creates the new one

**The recommended way to create product:**

```js
const product = DemandFaker.products.add();
```

It creates product with top-level variant and 2 options.

**Additional custom faker methods added:**

-   DemandFaker.address
-   DemandFaker.metaField
-   DemandFaker.productVariant
-   DemandFaker.cartItem
-   DemandFaker.order
-   DemandFaker.shops
-   DemandFaker.users
-   DemandFaker.products
