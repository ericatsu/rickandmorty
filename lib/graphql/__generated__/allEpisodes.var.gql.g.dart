// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allEpisodes.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GallEpisodesVars> _$gallEpisodesVarsSerializer =
    new _$GallEpisodesVarsSerializer();

class _$GallEpisodesVarsSerializer
    implements StructuredSerializer<GallEpisodesVars> {
  @override
  final Iterable<Type> types = const [GallEpisodesVars, _$GallEpisodesVars];
  @override
  final String wireName = 'GallEpisodesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GallEpisodesVars object,
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
  GallEpisodesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallEpisodesVarsBuilder();

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

class _$GallEpisodesVars extends GallEpisodesVars {
  @override
  final int? page;

  factory _$GallEpisodesVars(
          [void Function(GallEpisodesVarsBuilder)? updates]) =>
      (new GallEpisodesVarsBuilder()..update(updates))._build();

  _$GallEpisodesVars._({this.page}) : super._();

  @override
  GallEpisodesVars rebuild(void Function(GallEpisodesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallEpisodesVarsBuilder toBuilder() =>
      new GallEpisodesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallEpisodesVars && page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc(0, page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GallEpisodesVars')..add('page', page))
        .toString();
  }
}

class GallEpisodesVarsBuilder
    implements Builder<GallEpisodesVars, GallEpisodesVarsBuilder> {
  _$GallEpisodesVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GallEpisodesVarsBuilder();

  GallEpisodesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallEpisodesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallEpisodesVars;
  }

  @override
  void update(void Function(GallEpisodesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallEpisodesVars build() => _build();

  _$GallEpisodesVars _build() {
    final _$result = _$v ?? new _$GallEpisodesVars._(page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
