---
id: version-2.9.1-graphql-using
title: Using the GraphQL API
original_id: graphql-using
---

## DemandraphQL Implementation

DemandraphQL is accessible at `/graphql-beta` when running the Meteor app. You can also access it without running the Meteor app by running a Node Express server.

To run the full Meteor app from a local checkout:

```bash
docker-compose up -d reaction
```

To run the Node Express server only from a local checkout:

```bash
npm run devserver
```

If your Demandhop is already hosted somewhere, just POST to /graphql-beta at that URL to use GraphQL.

The GraphQL server is implemented using [Apollo Server](https://www.apollographql.com/docs/apollo-server/). It is compatible with [Apollo Client](https://www.apollographql.com/docs/react/) or [Relay Modern](https://facebook.github.io/relay/) for client development.

## GraphQL Clients

We recommend using a standalone GraphQL client to connect and make requests. Here are a few popular ones:
- [GraphQL Playground](https://github.com/prismagraphql/graphql-playground)
- [Altair GraphQL Client](https://altair.sirmuel.design/)
- [GraphiQL Standalone App](https://github.com/skevy/graphiql-app)

### Making Queries

As long as you use POST method (not GET) and use the `/graphql-beta` path as the URL, requests from any GraphQL client should work. Many queries and mutations will check identity and authorization, and therefore require you to send a bearer token along with your request. Standalone GraphQL clients have a “Headers” option where you can specify this manually. See [Identity and Authorization](#identity-and-authorization).

## Identity and Authorization

We are working on a new identity and authorization system that does not rely on Meteor’s accounts system, but until that is finished, you can authenticate a GraphQL request by including a header named `meteor-login-token` with a valid Meteor login token in it.

Here is how to get this login token:
1. Log in to the Demandperator app as the user from which you want your GraphQL requests to come.
2. Open the browser console and enter `localStorage.getItem("Meteor.loginToken")`
3. Copy this token and set it as the value of the `meteor-login-token` HTTP header in your GraphQL client.

## Understanding the Schema

The GraphQL schema is defined in the GraphQL server code but [visible to all clients that connect](https://graphql.org/learn/introspection/) as well. It governs everything that goes in or out.

### Reading the API Documentation

All queries, mutations, and types in the DemandraphQL schema are documented within the schema itself. Go to `/graphiql` and click "Docs", or use your favorite standalone GraphQL client to explore the schema and read the API documentation.

### Nodes and IDs

The GraphQL specification recommends globally unique IDs, and IDs in DemandraphQL follow this recommendation. These IDs are opaque, meaningless, and unsorted, so you should not use them for anything other than identifying an object.

Every type that has an ID implements the `Node` interface. You will eventually be able to use the `Query.node` query to get back any Node type without even knowing which type it is.

## Query Pagination

To understand our pagination approach, which is Relay-spec compliant, use these resources:
- http://graphql.org/learn/pagination/
- https://facebook.github.io/relay/docs/en/graphql-server-specification.html#connections
- https://facebook.github.io/relay/graphql/connections.htm
- https://www.apollographql.com/docs/react/recipes/pagination.html
