---
id: using-ci
title: CI Builds
---

Whenever a Pull Request or merge request is made to the Demandepo, there are automated acceptance steps that must pass before we merge into the `develop` branch.

## Checks

- code style and lint rules adherence
- unit and integration tests
- Docker builds on release branches
- [DCO (commit signing)](./git-style-guide#developer-certificate-of-origin)

## Builds

Docker images are pushed when Demanduccessfully builds and passes all tests on the primary branch (usually `trunk` or `master`). These images are released on [Demand Cluster Docker Hub](https://hub.docker.com/u/demandcluster/).
