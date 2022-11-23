// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allCharacters.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GallCharactersVars> _$gallCharactersVarsSerializer =
    new _$GallCharactersVarsSerializer();

class _$GallCharactersVarsSerializer
    implements StructuredSerializer<GallCharactersVars> {
  @override
  final Iterable<Type> types = const [GallCharactersVars, _$GallCharactersVars];
  @override
  final String wireName = 'GallCharactersVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallCharactersVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GallCharactersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallCharactersVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GallCharactersVars extends GallCharactersVars {
  @override
  final int? page;

  factory _$GallCharactersVars(
          [void Function(GallCharactersVarsBuilder)? updates]) =>
      (new GallCharactersVarsBuilder()..update(updates))._build();

  _$GallCharactersVars._({this.page}) : super._();

  @override
  GallCharactersVars rebuild(
          void Function(GallCharactersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallCharactersVarsBuilder toBuilder() =>
      new GallCharactersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallCharactersVars && page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc(0, page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GallCharactersVars')
          ..add('page', page))
        .toString();
  }
}

class GallCharactersVarsBuilder
    implements Builder<GallCharactersVars, GallCharactersVarsBuilder> {
  _$GallCharactersVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GallCharactersVarsBuilder();

  GallCharactersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallCharactersVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallCharactersVars;
  }

  @override
  void update(void Function(GallCharactersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallCharactersVars build() => _build();

  _$GallCharactersVars _build() {
    final _$result = _$v ?? new _$GallCharactersVars._(page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
