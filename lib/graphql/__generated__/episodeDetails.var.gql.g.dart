// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodeDetails.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GepisodeDetailsVars> _$gepisodeDetailsVarsSerializer =
    new _$GepisodeDetailsVarsSerializer();

class _$GepisodeDetailsVarsSerializer
    implements StructuredSerializer<GepisodeDetailsVars> {
  @override
  final Iterable<Type> types = const [
    GepisodeDetailsVars,
    _$GepisodeDetailsVars
  ];
  @override
  final String wireName = 'GepisodeDetailsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GepisodeDetailsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GepisodeDetailsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GepisodeDetailsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GepisodeDetailsVars extends GepisodeDetailsVars {
  @override
  final String id;

  factory _$GepisodeDetailsVars(
          [void Function(GepisodeDetailsVarsBuilder)? updates]) =>
      (new GepisodeDetailsVarsBuilder()..update(updates))._build();

  _$GepisodeDetailsVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GepisodeDetailsVars', 'id');
  }

  @override
  GepisodeDetailsVars rebuild(
          void Function(GepisodeDetailsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GepisodeDetailsVarsBuilder toBuilder() =>
      new GepisodeDetailsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GepisodeDetailsVars && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GepisodeDetailsVars')..add('id', id))
        .toString();
  }
}

class GepisodeDetailsVarsBuilder
    implements Builder<GepisodeDetailsVars, GepisodeDetailsVarsBuilder> {
  _$GepisodeDetailsVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GepisodeDetailsVarsBuilder();

  GepisodeDetailsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GepisodeDetailsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GepisodeDetailsVars;
  }

  @override
  void update(void Function(GepisodeDetailsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GepisodeDetailsVars build() => _build();

  _$GepisodeDetailsVars _build() {
    final _$result = _$v ??
        new _$GepisodeDetailsVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GepisodeDetailsVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
