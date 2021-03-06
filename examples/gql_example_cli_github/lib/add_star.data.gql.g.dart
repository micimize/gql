// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_star.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAddStarData> _$gAddStarDataSerializer =
    new _$GAddStarDataSerializer();
Serializer<GAddStarData_action> _$gAddStarDataActionSerializer =
    new _$GAddStarData_actionSerializer();
Serializer<GAddStarData_action_starrable>
    _$gAddStarDataActionStarrableSerializer =
    new _$GAddStarData_action_starrableSerializer();

class _$GAddStarDataSerializer implements StructuredSerializer<GAddStarData> {
  @override
  final Iterable<Type> types = const [GAddStarData, _$GAddStarData];
  @override
  final String wireName = 'GAddStarData';

  @override
  Iterable<Object> serialize(Serializers serializers, GAddStarData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.action != null) {
      result
        ..add('action')
        ..add(serializers.serialize(object.action,
            specifiedType: const FullType(GAddStarData_action)));
    }
    return result;
  }

  @override
  GAddStarData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddStarDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'action':
          result.action.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GAddStarData_action))
              as GAddStarData_action);
          break;
      }
    }

    return result.build();
  }
}

class _$GAddStarData_actionSerializer
    implements StructuredSerializer<GAddStarData_action> {
  @override
  final Iterable<Type> types = const [
    GAddStarData_action,
    _$GAddStarData_action
  ];
  @override
  final String wireName = 'GAddStarData_action';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GAddStarData_action object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    if (object.starrable != null) {
      result
        ..add('starrable')
        ..add(serializers.serialize(object.starrable,
            specifiedType: const FullType(GAddStarData_action_starrable)));
    }
    return result;
  }

  @override
  GAddStarData_action deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddStarData_actionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'starrable':
          result.starrable.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GAddStarData_action_starrable))
              as GAddStarData_action_starrable);
          break;
      }
    }

    return result.build();
  }
}

class _$GAddStarData_action_starrableSerializer
    implements StructuredSerializer<GAddStarData_action_starrable> {
  @override
  final Iterable<Type> types = const [
    GAddStarData_action_starrable,
    _$GAddStarData_action_starrable
  ];
  @override
  final String wireName = 'GAddStarData_action_starrable';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GAddStarData_action_starrable object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'viewerHasStarred',
      serializers.serialize(object.viewerHasStarred,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GAddStarData_action_starrable deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddStarData_action_starrableBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'viewerHasStarred':
          result.viewerHasStarred = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddStarData extends GAddStarData {
  @override
  final GAddStarData_action action;

  factory _$GAddStarData([void Function(GAddStarDataBuilder) updates]) =>
      (new GAddStarDataBuilder()..update(updates)).build();

  _$GAddStarData._({this.action}) : super._();

  @override
  GAddStarData rebuild(void Function(GAddStarDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddStarDataBuilder toBuilder() => new GAddStarDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddStarData && action == other.action;
  }

  @override
  int get hashCode {
    return $jf($jc(0, action.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAddStarData')..add('action', action))
        .toString();
  }
}

class GAddStarDataBuilder
    implements Builder<GAddStarData, GAddStarDataBuilder> {
  _$GAddStarData _$v;

  GAddStarData_actionBuilder _action;
  GAddStarData_actionBuilder get action =>
      _$this._action ??= new GAddStarData_actionBuilder();
  set action(GAddStarData_actionBuilder action) => _$this._action = action;

  GAddStarDataBuilder();

  GAddStarDataBuilder get _$this {
    if (_$v != null) {
      _action = _$v.action?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddStarData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GAddStarData;
  }

  @override
  void update(void Function(GAddStarDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAddStarData build() {
    _$GAddStarData _$result;
    try {
      _$result = _$v ?? new _$GAddStarData._(action: _action?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'action';
        _action?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAddStarData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAddStarData_action extends GAddStarData_action {
  @override
  final String G__typename;
  @override
  final GAddStarData_action_starrable starrable;

  factory _$GAddStarData_action(
          [void Function(GAddStarData_actionBuilder) updates]) =>
      (new GAddStarData_actionBuilder()..update(updates)).build();

  _$GAddStarData_action._({this.G__typename, this.starrable}) : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError('GAddStarData_action', 'G__typename');
    }
  }

  @override
  GAddStarData_action rebuild(
          void Function(GAddStarData_actionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddStarData_actionBuilder toBuilder() =>
      new GAddStarData_actionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddStarData_action &&
        G__typename == other.G__typename &&
        starrable == other.starrable;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), starrable.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAddStarData_action')
          ..add('G__typename', G__typename)
          ..add('starrable', starrable))
        .toString();
  }
}

class GAddStarData_actionBuilder
    implements Builder<GAddStarData_action, GAddStarData_actionBuilder> {
  _$GAddStarData_action _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  GAddStarData_action_starrableBuilder _starrable;
  GAddStarData_action_starrableBuilder get starrable =>
      _$this._starrable ??= new GAddStarData_action_starrableBuilder();
  set starrable(GAddStarData_action_starrableBuilder starrable) =>
      _$this._starrable = starrable;

  GAddStarData_actionBuilder() {
    GAddStarData_action._initializeBuilder(this);
  }

  GAddStarData_actionBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _starrable = _$v.starrable?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddStarData_action other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GAddStarData_action;
  }

  @override
  void update(void Function(GAddStarData_actionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAddStarData_action build() {
    _$GAddStarData_action _$result;
    try {
      _$result = _$v ??
          new _$GAddStarData_action._(
              G__typename: G__typename, starrable: _starrable?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'starrable';
        _starrable?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAddStarData_action', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAddStarData_action_starrable extends GAddStarData_action_starrable {
  @override
  final String G__typename;
  @override
  final bool viewerHasStarred;

  factory _$GAddStarData_action_starrable(
          [void Function(GAddStarData_action_starrableBuilder) updates]) =>
      (new GAddStarData_action_starrableBuilder()..update(updates)).build();

  _$GAddStarData_action_starrable._({this.G__typename, this.viewerHasStarred})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GAddStarData_action_starrable', 'G__typename');
    }
    if (viewerHasStarred == null) {
      throw new BuiltValueNullFieldError(
          'GAddStarData_action_starrable', 'viewerHasStarred');
    }
  }

  @override
  GAddStarData_action_starrable rebuild(
          void Function(GAddStarData_action_starrableBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddStarData_action_starrableBuilder toBuilder() =>
      new GAddStarData_action_starrableBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddStarData_action_starrable &&
        G__typename == other.G__typename &&
        viewerHasStarred == other.viewerHasStarred;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), viewerHasStarred.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAddStarData_action_starrable')
          ..add('G__typename', G__typename)
          ..add('viewerHasStarred', viewerHasStarred))
        .toString();
  }
}

class GAddStarData_action_starrableBuilder
    implements
        Builder<GAddStarData_action_starrable,
            GAddStarData_action_starrableBuilder> {
  _$GAddStarData_action_starrable _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  bool _viewerHasStarred;
  bool get viewerHasStarred => _$this._viewerHasStarred;
  set viewerHasStarred(bool viewerHasStarred) =>
      _$this._viewerHasStarred = viewerHasStarred;

  GAddStarData_action_starrableBuilder() {
    GAddStarData_action_starrable._initializeBuilder(this);
  }

  GAddStarData_action_starrableBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _viewerHasStarred = _$v.viewerHasStarred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddStarData_action_starrable other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GAddStarData_action_starrable;
  }

  @override
  void update(void Function(GAddStarData_action_starrableBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAddStarData_action_starrable build() {
    final _$result = _$v ??
        new _$GAddStarData_action_starrable._(
            G__typename: G__typename, viewerHasStarred: viewerHasStarred);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
