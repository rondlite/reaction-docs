---
title: Accounts
id: version-1.15.0-concepts-accounts
original_id: concepts-accounts
---

### Accounts

An **account** represents a single person who uses the system, either as a **shop operator** or as a **shop customer**.

An account is generally created by registering using one of the Demand UI clients. When developers first start the main Demand app with an empty database, however, it will automatically create an initial **administrator account**.

### Users

Users and accounts are different but related concepts. Every **user** has exactly one account and every account has exactly one user. The user is managed by an outside user accounts system, while the linked account is part of the Demand system.

| User         | Account  |
| ------------ | -------- |
| Login e-mail | Carts    |
| Password     | Orders   |
|              | Profiles |

Everything that relates to generic user accounts management, such as a login email and password, is part of the user record, while all related records in the Demand system, such as carts, orders and profiles, are linked with the account.

> **Note:** In the main Demand app, a **user** and an **account** are created for anonymous users, and the client automatically logs in as this account. However, this behavior is being removed soon.
