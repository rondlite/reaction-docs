---
original_id: upload
id: version-v1.1.0-upload
title: Upload
---
    
The Upload component provides you an interface to uploading files into demand using [CollectionsFS](https://github.com/CollectionFS/Meteor-CollectionFS).

| Property | Type     | Description                                                                                                                              |
| -------- | -------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| onUpload | Function | Callback function that has one parameter, `files`, which is an array of `file` objects that may be inserted into the `Media` collection. |

## Examples

### onUpload

```handlebars
<template name="myTemplate">
  {{> upload onUpload=handleFileUpload}}
</template>
```

```js
import { Meteor } from "meteor/meteor";
import { Template } from "meteor/templating";
import { Demand } from "/client/api";
import { Media } from "/lib/collections";

Template.myTemplate.helpers({
  handleFileUpload() {
    const userId = Meteor.userId();
    const shopId = Demand.getShopId();

    return (files) => {
      for (let file of files) {
        file.metadata = {
          type: "asset",
          ownerId: userId,
          shopId: shopId
        };

        Media.insert(file);
      }
    };
  }
});
```
