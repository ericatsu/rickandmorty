// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GCacheControlScope _$gCacheControlScopePUBLIC =
    const GCacheControlScope._('PUBLIC');
const GCacheControlScope _$gCacheControlScopePRIVATE =
    const GCacheControlScope._('PRIVATE');

GCacheControlScope _$gCacheControlScopeValueOf(String name) {
  switch (name) {
    case 'PUBLIC':
      return _$gCacheControlScopePUBLIC;
    case 'PRIVATE':
      return _$gCacheControlScopePRIVATE;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GCacheControlScope> _$gCacheControlScopeValues =
    new BuiltSet<GCacheControlScope>(const <GCacheControlScope>[
  _$gCacheControlScopePUBLIC,
  _$gCacheControlScopePRIVATE,
]);

Serializer<GCacheControlScope> _$gCacheControlScopeSerializer =
    new _$GCacheControlScopeSerializer();
Serializer<GFilterCharacter> _$gFilterCharacterSerializer =
    new _$GFilterCharacterSerializer();
Serializer<GFilterEpisode> _$gFilterEpisodeSerializer =
    new _$GFilterEpisodeSerializer();
Serializer<GFilterLocation> _$gFilterLocationSerializer =
    new _$GFilterLocationSerializer();

class _$GCacheControlScopeSerializer
    implements PrimitiveSerializer<GCacheControlScope> {
  @override
  final Iterable<Type> types = const <Type>[GCacheControlScope];
  @override
  final String wireName = 'GCacheControlScope';

  @override
  Object serialize(Serializers serializers, GCacheControlScope object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GCacheControlScope deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GCacheControlScope.valueOf(serialized as String);
}

class _$GFilterCharacterSerializer
    implements StructuredSerializer<GFilterCharacter> {
  @override
  final Iterable<Type> types = const [GFilterCharacter, _$GFilterCharacter];
  @override
  final String wireName = 'GFilterCharacter';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFilterCharacter object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.species;
    if (value != null) {
      result
        ..add('species')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFilterCharacter deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFilterCharacterBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'species':
          result.species = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFilterEpisodeSerializer
    implements StructuredSerializer<GFilterEpisode> {
  @override
  final Iterable<Type> types = const [GFilterEpisode, _$GFilterEpisode];
  @override
  final String wireName = 'GFilterEpisode';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFilterEpisode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.episode;
    if (value != null) {
      result
        ..add('episode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFilterEpisode deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFilterEpisodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'episode':
          result.episode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFilterLocationSerializer
    implements StructuredSerializer<GFilterLocation> {
  @override
  final Iterable<Type> types = const [GFilterLocation, _$GFilterLocation];
  @override
  final String wireName = 'GFilterLocation';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFilterLocation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dimension;
    if (value != null) {
      result
        ..add('dimension')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFilterLocation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFilterLocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dimension':
          result.dimension = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFilterCharacter extends GFilterCharacter {
  @override
  final String? name;
  @override
  final String? status;
  @override
  final String? species;
  @override
  final String? type;
  @override
  final String? gender;

  factory _$GFilterCharacter(
          [void Function(GFilterCharacterBuilder)? updates]) =>
      (new GFilterCharacterBuilder()..update(updates))._build();

  _$GFilterCharacter._(
      {this.name, this.status, this.species, this.type, this.gender})
      : super._();

  @override
  GFilterCharacter rebuild(void Function(GFilterCharacterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFilterCharacterBuilder toBuilder() =>
      new GFilterCharacterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFilterCharacter &&
        name == other.name &&
        status == other.status &&
        species == other.species &&
        type == other.type &&
        gender == other.gender;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), status.hashCode), species.hashCode),
            type.hashCode),
        gender.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFilterCharacter')
          ..add('name', name)
          ..add('status', status)
          ..add('species', species)
          ..add('type', type)
          ..add('gender', gender))
        .toString();
  }
}

class GFilterCharacterBuilder
    implements Builder<GFilterCharacter, GFilterCharacterBuilder> {
  _$GFilterCharacter? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _species;
  String? get species => _$this._species;
  set species(String? species) => _$this._species = species;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  GFilterCharacterBuilder();

  GFilterCharacterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _status = $v.status;
      _species = $v.species;
      _type = $v.type;
      _gender = $v.gender;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFilterCharacter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFilterCharacter;
  }

  @override
  void update(void Function(GFilterCharacterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFilterCharacter build() => _build();

  _$GFilterCharacter _build() {
    final _$result = _$v ??
        new _$GFilterCharacter._(
            name: name,
            status: status,
            species: species,
            type: type,
            gender: gender);
    replace(_$result);
    return _$result;
  }
}

class _$GFilterEpisode extends GFilterEpisode {
  @override
  final String? name;
  @override
  final String? episode;

  factory _$GFilterEpisode([void Function(GFilterEpisodeBuilder)? updates]) =>
      (new GFilterEpisodeBuilder()..update(updates))._build();

  _$GFilterEpisode._({this.name, this.episode}) : super._();

  @override
  GFilterEpisode rebuild(void Function(GFilterEpisodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFilterEpisodeBuilder toBuilder() =>
      new GFilterEpisodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFilterEpisode &&
        name == other.name &&
        episode == other.episode;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), episode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFilterEpisode')
          ..add('name', name)
          ..add('episode', episode))
        .toString();
  }
}

class GFilterEpisodeBuilder
    implements Builder<GFilterEpisode, GFilterEpisodeBuilder> {
  _$GFilterEpisode? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _episode;
  String? get episode => _$this._episode;
  set episode(String? episode) => _$this._episode = episode;

  GFilterEpisodeBuilder();

  GFilterEpisodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _episode = $v.episode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFilterEpisode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFilterEpisode;
  }

  @override
  void update(void Function(GFilterEpisodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFilterEpisode build() => _build();

  _$GFilterEpisode _build() {
    final _$result =
        _$v ?? new _$GFilterEpisode._(name: name, episode: episode);
    replace(_$result);
    return _$result;
  }
}

class _$GFilterLocation extends GFilterLocation {
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? dimension;

  factory _$GFilterLocation([void Function(GFilterLocationBuilder)? updates]) =>
      (new GFilterLocationBuilder()..update(updates))._build();

  _$GFilterLocation._({this.name, this.type, this.dimension}) : super._();

  @override
  GFilterLocation rebuild(void Function(GFilterLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFilterLocationBuilder toBuilder() =>
      new GFilterLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFilterLocation &&
        name == other.name &&
        type == other.type &&
        dimension == other.dimension;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), type.hashCode), dimension.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFilterLocation')
          ..add('name', name)
          ..add('type', type)
          ..add('dimension', dimension))
        .toString();
  }
}

class GFilterLocationBuilder
    implements Builder<GFilterLocation, GFilterLocationBuilder> {
  _$GFilterLocation? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _dimension;
  String? get dimension => _$this._dimension;
  set dimension(String? dimension) => _$this._dimension = dimension;

  GFilterLocationBuilder();

  GFilterLocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _dimension = $v.dimension;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFilterLocation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFilterLocation;
  }

  @override
  void update(void Function(GFilterLocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFilterLocation build() => _build();

  _$GFilterLocation _build() {
    final _$result = _$v ??
        new _$GFilterLocation._(name: name, type: type, dimension: dimension);
    replace(_$result);
    return _$result;
  }
}

class _$GUpload extends GUpload {
  @override
  final String value;

  factory _$GUpload([void Function(GUploadBuilder)? updates]) =>
      (new GUploadBuilder()..update(updates))._build();

  _$GUpload._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GUpload', 'value');
  }

  @override
  GUpload rebuild(void Function(GUploadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUploadBuilder toBuilder() => new GUploadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpload && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpload')..add('value', value))
        .toString();
  }
}

class GUploadBuilder implements Builder<GUpload, GUploadBuilder> {
  _$GUpload? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GUploadBuilder();

  GUploadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpload;
  }

  @override
  void update(void Function(GUploadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpload build() => _build();

  _$GUpload _build() {
    final _$result = _$v ??
        new _$GUpload._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GUpload', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
