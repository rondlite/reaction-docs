---
id: version-2.9.1-exports
title: Exports
original_id: exports
---

[Meteor allows you to import](https://guide.meteor.com/structure.html#intro-to-import-export) CSS, HTML and JavaScript in Demand

## import

[Meteor functions](http://docs.meteor.com/api/core.html) such as `Session`, `Meteor.methods`, `Meteor.publish/subscribe`, `Mongo.Collection`. While Meteor does make many of these available in the global exported `Meteor` object, you can also import Meteor.

```js
import { Meteor } from "meteor/meteor";
```

### npm

To use an npm package from a file you can import the name of the package:

```js
import { isArray } from "lodash";
```

## export

Meteor also supports the standard ES2015 modules `export` syntax:

```js
export const listRenderHold = LaunchScreen.hold();  // named export
export { Todos };                                   // named export
export default Lists;                               // default export
export default new Collection('lists');             // default export
```

### Demand

The convenience wrapper `Demand exports a number of helpers from deDemande, that can be used without an independent import.

In server code:

```js
// import Logger functions and Demandlobal object.
import Logger from "@demandcluster/logger";
import { Demand from "/imports/plugins/core/core/server/deDemand
```

In client code:

```js
import { Demand from "/client/api";
// import Logger functions and Demandlobal object.
import Logger from "@demandcluster/logger";
```
