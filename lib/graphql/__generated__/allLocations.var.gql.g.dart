// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allLocations.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GallLocationsVars> _$gallLocationsVarsSerializer =
    new _$GallLocationsVarsSerializer();

class _$GallLocationsVarsSerializer
    implements StructuredSerializer<GallLocationsVars> {
  @override
  final Iterable<Type> types = const [GallLocationsVars, _$GallLocationsVars];
  @override
  final String wireName = 'GallLocationsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GallLocationsVars object,
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
  GallLocationsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallLocationsVarsBuilder();

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

class _$GallLocationsVars extends GallLocationsVars {
  @override
  final int? page;

  factory _$GallLocationsVars(
          [void Function(GallLocationsVarsBuilder)? updates]) =>
      (new GallLocationsVarsBuilder()..update(updates))._build();

  _$GallLocationsVars._({this.page}) : super._();

  @override
  GallLocationsVars rebuild(void Function(GallLocationsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallLocationsVarsBuilder toBuilder() =>
      new GallLocationsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallLocationsVars && page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc(0, page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GallLocationsVars')
          ..add('page', page))
        .toString();
  }
}

class GallLocationsVarsBuilder
    implements Builder<GallLocationsVars, GallLocationsVarsBuilder> {
  _$GallLocationsVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GallLocationsVarsBuilder();

  GallLocationsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallLocationsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallLocationsVars;
  }

  @override
  void update(void Function(GallLocationsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallLocationsVars build() => _build();

  _$GallLocationsVars _build() {
    final _$result = _$v ?? new _$GallLocationsVars._(page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
