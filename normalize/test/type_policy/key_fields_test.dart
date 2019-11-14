import "package:test/test.dart";
import 'package:gql/language.dart';

import 'package:normalize/normalize.dart';
import '../shared_data.dart';

void main() {
  group("Key Fields", () {
    final query = parseString("""
    query TestQuery {
      posts {
        id
        __typename
        author {
          id
          __typename
          name
        }
        title
        comments {
          id
          __typename
          commenter {
            id
            __typename
            name
          }
        }
      }
    }
  """);

    final normalizedMap = {
      "Query": {
        "posts": [
          {"\$ref": "Post:123:My awesome blog post"}
        ]
      },
      "Post:123:My awesome blog post": {
        "id": "123",
        "__typename": "Post",
        "author": {"\$ref": "Author:1"},
        "title": "My awesome blog post",
        "comments": [
          {"\$ref": "Comment:324"}
        ]
      },
      "Author:1": {"id": "1", "__typename": "Author", "name": "Paul"},
      "Comment:324": {
        "id": "324",
        "__typename": "Comment",
        "commenter": {"\$ref": "Author:2"}
      },
      "Author:2": {"id": "2", "__typename": "Author", "name": "Nicole"}
    };

    final typePolicies = {
      "Post": TypePolicy(keyFields: ['id', 'title'])
    };

    test("Produces correct normalized object", () {
      expect(
          normalize(
              query: query, data: sharedResponse, typePolicies: typePolicies),
          equals(normalizedMap));
    });

    test("Produces correct nested data object", () {
      expect(
          denormalize(
              query: query,
              normalizedMap: normalizedMap,
              typePolicies: typePolicies),
          equals(sharedResponse));
    });
  });
}
