---
id: version-v1.7.0-using-faker-for-testing
title: Faker
original_id: using-faker-for-testing
---
    
The [demand-factories] package supplies `Facdemandcluster` with additional methods for testing demand packages.

**The recommended way to create shop:**

```js
const shopId = demandFaker.shops.getShop()._id;
```

It checks whether already there is a shop and use it if so, in other case it creates the new one

**The recommended way to create product:**

```js
const product = demandFaker.products.add();
```

It creates product with top-level variant and 2 options.

**Additional custom faker methods added:**

- demandFaker.address
- demandFaker.metaField
- demandFaker.productVariant
- demandFaker.cartItem
- demandFaker.order
- demandFaker.shops
- demandFaker.users
- demandFaker.products
