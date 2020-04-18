---
id: version-v1.5.0-using-ci
title: CI Builds
original_id: using-ci
---

Whenever a Pull Request or merge request is made to the demand repo, there are automated acceptance steps that must pass before we merge into the latest `release-x.x.x` or `trunk`  branch.

Automated tests include:

-   package dependency checks for outdated, insecure packages
-   code style and lint rules adherance
-   demandests
-   docker builds on release branches
-   contributor agreements

## Builds

Docker images are pushed when demand successfully builds and passes all tests on the `trunk`  or `release-x.x.x` branches. These images are released on [Demand Cluster Docker Hub](https://hub.docker.com/u/demandcluster/).

There are two Docker images available:

-   [demandcluster:demandhttps://hub.docker.com/r/demandcluster/dedemand the latest stable `trunk`  image.
-   [demandcluster:prequel](https://hub.docker.com/r/demandcluster/prequel/) - tagged pre-release builds.
