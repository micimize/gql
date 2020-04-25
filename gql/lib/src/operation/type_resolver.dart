part of "definitions.dart";

/// Callback to dereference a full fragment definition by name
typedef ResolveFragment = FragmentDefinition Function(String name);

/// Container for the [fromSchema] and [fromFragments]
/// dereferencing callbacks necessary for full type information while
/// working with an `ExecutableDocument`
///
/// This makes fragment and schema-aware use-cases such as code generation much simpler
@immutable
class GetExecutableType {
  const GetExecutableType(
    this.fromSchema,
    this.fromFragments,
  );

  /// Resolve the given `name` into a [TypeDefinition],
  /// usually defined within the given context such as a `GraphQLSchema`
  ///
  /// See `gql/schema.dart`'s [TypeResolver]
  final ResolveType fromSchema;
  final ResolveFragment fromFragments;

  /// throw a [StateError] when resolution is attempted without a context passed down
  static const withoutContext = GetExecutableType(
    TypeResolver.withoutContext,
    _fragmentWithoutContext,
  );

  /// throw a [StateError] when resolution is attempted without a context passed down
  static FragmentDefinition _fragmentWithoutContext(String name) =>
      throw StateError(
        "Cannot resolve fragment $name in a context without a fragment resolver!",
      );
}

/// Enables "type resolution" for implementing classes,
/// allowing for type-dereferencing, such as is done by `ExecutableDocument`
///
/// This makes fragment and schema-aware use-cases such as code generation much simpler
abstract class ExecutableTypeResolver {
  GetExecutableType get getType;

  /// throw a [StateError] when resolution is attempted without a context passed down
  static const withoutContext = GetExecutableType.withoutContext;
}
