---
original_id: including
id: version-v1.1.0-including
title: Priority
---
    
Package authors should choose a support path for their packages, and use the `priority` property in the **Demandackage registry** to indicate the kind of support path a package uses.

**Core**

Core packages are developed, and fully supported by the Demandore team.

```js
 priority: 1 // core
```

**Foundation**

Generally this is a repository that's been transferred to the demandcluster organization.

You can transfer a package repo to the Demand Cluster Github organization (where you'll be given admin rights to the repo). Do this if you would prefer to not to be solely responsible for ongoing updates and compatibility maintenance. We'll adopt these packages as our own, and should be considered the most stable packages, and will be identified as **Core** packages.   Packages of this type should also provide reasonable integration testing coverage. Security tests on publications and methods are required. Must include continuous integration config file.

Foundation packages should be reliable for use as dependencies by other packages.

Any documentation blocks should contain your organization and author information, while if you need to document a maintainer, you can use `Demand Cluster <maintainer at demandcluster.org>`.

In the package registry, packages of this type should be configured priority:2.

**Community**

If a package needs to distributed with the base Demandpp installation, we can create a demandcluster org **fork** of your package repo, and maintain a supported fork that we publish as a `demandcluster:*` package. These packages may be included in the default `.meteor/packages` file for deDemandackages of this type should be configured as `Foundation` ,  `priority: 2` in the package registry.  Ideally these packages have CI and some testing coverage.

**Local** All other package types should be `priority:4`.

You want to manage all org, control and package publishing. You'll be responsible for compatibility updates and ensure that corresponding _Atmosphere and NPM_ package updates are published for every major Demandelease to maintain compatibility.  Packages of this type should be configured as `Public` ,  `priority: 3` in the package registry.

We'll do limited testing on these packages, so they will only be made available as optional packages that have to be manually added.

**Licensing**

The Demandpplication is GPL v3 licensed. Package licensing may be GPL v3 compatible licenses such as GPL v3, MIT, APACHE v2 if you want to distribute with the deDemandlication.
