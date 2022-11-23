// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characterDetails.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GcharacterDetailsVars> _$gcharacterDetailsVarsSerializer =
    new _$GcharacterDetailsVarsSerializer();

class _$GcharacterDetailsVarsSerializer
    implements StructuredSerializer<GcharacterDetailsVars> {
  @override
  final Iterable<Type> types = const [
    GcharacterDetailsVars,
    _$GcharacterDetailsVars
  ];
  @override
  final String wireName = 'GcharacterDetailsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcharacterDetailsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GcharacterDetailsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcharacterDetailsVarsBuilder();

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

class _$GcharacterDetailsVars extends GcharacterDetailsVars {
  @override
  final String id;

  factory _$GcharacterDetailsVars(
          [void Function(GcharacterDetailsVarsBuilder)? updates]) =>
      (new GcharacterDetailsVarsBuilder()..update(updates))._build();

  _$GcharacterDetailsVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GcharacterDetailsVars', 'id');
  }

  @override
  GcharacterDetailsVars rebuild(
          void Function(GcharacterDetailsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcharacterDetailsVarsBuilder toBuilder() =>
      new GcharacterDetailsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcharacterDetailsVars && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcharacterDetailsVars')
          ..add('id', id))
        .toString();
  }
}

class GcharacterDetailsVarsBuilder
    implements Builder<GcharacterDetailsVars, GcharacterDetailsVarsBuilder> {
  _$GcharacterDetailsVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GcharacterDetailsVarsBuilder();

  GcharacterDetailsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcharacterDetailsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcharacterDetailsVars;
  }

  @override
  void update(void Function(GcharacterDetailsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcharacterDetailsVars build() => _build();

  _$GcharacterDetailsVars _build() {
    final _$result = _$v ??
        new _$GcharacterDetailsVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GcharacterDetailsVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
