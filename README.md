[![MIT License][license-badge]][license-link]
[![PRs Welcome][prs-badge]][prs-link]
[![Star on GitHub][github-star-badge]][github-star-link]
[![Watch on GitHub][github-watch-badge]][github-watch-link]

# Normalize

## About

This project allows for the normalization and denormalization of GraphQL Documents.

The `normalize` function creates a flat map of normalized documents and can be used to cache results of GraphQL queries. It traverses the [GraphQL AST](https://github.com/gql-dart/gql/blob/master/gql/README.md) and only includes the fields specified in the GraphQL Document in the normalized results.

The `normalize` function only normalizes entities that include a `__typename` field and for which the `DataIdResolver` function returns a non-null value. Otherwise, the entity will be stored with its parent. The default `DataIdResolver` automatically checks for `id` and `_id` fields, respectively.

## Features

| Feature                                                                                                                           | Progress |
| :-------------------------------------------------------------------------------------------------------------------------------- | :------: |
| Fragments                                                                                                                         |    ✅    |
| Variables                                                                                                                         |    ✅    |
| Interface & Union types                                                                                                           |    ✅    |
| Aliases                                                                                                                           |    ✅    |
| `TypePolicy`s (see [Apollo](https://www.apollographql.com/docs/react/v3.0-beta/caching/cache-configuration/#the-typepolicy-type)) |    ✅    |

## Limitations

`TypePolicy.keyFields` and `FieldPolicy.keyArgs` currently only accept a flat list of `String`s. Functions and nested lists of strings and are not yet supported.

## Gratitude

Inspiration (and many of the tests) for this library came from the [graphql-norm](https://github.com/dividab/graphql-norm) package.

This library depends on the [gql](https://github.com/gql-dart/gql) library.

[license-badge]: https://img.shields.io/github/license/smkhalsa/normalize.svg?style=flat-square
[license-link]: https://github.com/smkhalsa/normalize/blob/master/LICENSE
[prs-badge]: https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square
[prs-link]: http://makeapullrequest.com
[github-watch-badge]: https://img.shields.io/github/watchers/smkhalsa/normalize.svg?style=flat-square&logo=github&logoColor=ffffff
[github-watch-link]: https://github.com/smkhalsa/normalize/watchers
[github-star-badge]: https://img.shields.io/github/stars/smkhalsa/normalize.svg?style=flat-square&logo=github&logoColor=ffffff
[github-star-link]: https://github.com/smkhalsa/normalize/stargazers
