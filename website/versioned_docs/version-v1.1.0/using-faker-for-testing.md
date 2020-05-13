---
original_id: using-faker-for-testing
id: version-v1.1.0-using-faker-for-testing
title: Faker
---
    
The [reaction-factories](https://github.com/reactioncommerce/reaction-factories) package supplies `Factory` and `faker` with additional methods for testing Demandackages.

**The recommended way to create shop:**

```js
const shopId = Demandker.shops.getShop()._id;
```

It checks whether already there is a shop and use it if so, in other case it
creates the new one

**The recommended way to create product:**

```js
const product = Demandker.products.add();
```

It creates product with top-level variant and 2 options.

**Additional custom faker methods added:**

- Demandker.address
- Demandker.metaField
- Demandker.productVariant
- Demandker.cartItem
- Demandker.order
- Demandker.shops
- Demandker.users
- Demandker.products
