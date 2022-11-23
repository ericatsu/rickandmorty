// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allCharacters.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GallCharactersData> _$gallCharactersDataSerializer =
    new _$GallCharactersDataSerializer();
Serializer<GallCharactersData_characters>
    _$gallCharactersDataCharactersSerializer =
    new _$GallCharactersData_charactersSerializer();
Serializer<GallCharactersData_characters_info>
    _$gallCharactersDataCharactersInfoSerializer =
    new _$GallCharactersData_characters_infoSerializer();
Serializer<GallCharactersData_characters_results>
    _$gallCharactersDataCharactersResultsSerializer =
    new _$GallCharactersData_characters_resultsSerializer();

class _$GallCharactersDataSerializer
    implements StructuredSerializer<GallCharactersData> {
  @override
  final Iterable<Type> types = const [GallCharactersData, _$GallCharactersData];
  @override
  final String wireName = 'GallCharactersData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallCharactersData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.characters;
    if (value != null) {
      result
        ..add('characters')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GallCharactersData_characters)));
    }
    return result;
  }

  @override
  GallCharactersData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallCharactersDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'characters':
          result.characters.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GallCharactersData_characters))!
              as GallCharactersData_characters);
          break;
      }
    }

    return result.build();
  }
}

class _$GallCharactersData_charactersSerializer
    implements StructuredSerializer<GallCharactersData_characters> {
  @override
  final Iterable<Type> types = const [
    GallCharactersData_characters,
    _$GallCharactersData_characters
  ];
  @override
  final String wireName = 'GallCharactersData_characters';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallCharactersData_characters object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.info;
    if (value != null) {
      result
        ..add('info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GallCharactersData_characters_info)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GallCharactersData_characters_results)
            ])));
    }
    return result;
  }

  @override
  GallCharactersData_characters deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallCharactersData_charactersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'info':
          result.info.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GallCharactersData_characters_info))!
              as GallCharactersData_characters_info);
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GallCharactersData_characters_results)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GallCharactersData_characters_infoSerializer
    implements StructuredSerializer<GallCharactersData_characters_info> {
  @override
  final Iterable<Type> types = const [
    GallCharactersData_characters_info,
    _$GallCharactersData_characters_info
  ];
  @override
  final String wireName = 'GallCharactersData_characters_info';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallCharactersData_characters_info object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pages;
    if (value != null) {
      result
        ..add('pages')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.next;
    if (value != null) {
      result
        ..add('next')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GallCharactersData_characters_info deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallCharactersData_characters_infoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'pages':
          result.pages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GallCharactersData_characters_resultsSerializer
    implements StructuredSerializer<GallCharactersData_characters_results> {
  @override
  final Iterable<Type> types = const [
    GallCharactersData_characters_results,
    _$GallCharactersData_characters_results
  ];
  @override
  final String wireName = 'GallCharactersData_characters_results';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallCharactersData_characters_results object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.created;
    if (value != null) {
      result
        ..add('created')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GallCharactersData_characters_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallCharactersData_characters_resultsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'species':
          result.species = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GallCharactersData extends GallCharactersData {
  @override
  final String G__typename;
  @override
  final GallCharactersData_characters? characters;

  factory _$GallCharactersData(
          [void Function(GallCharactersDataBuilder)? updates]) =>
      (new GallCharactersDataBuilder()..update(updates))._build();

  _$GallCharactersData._({required this.G__typename, this.characters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallCharactersData', 'G__typename');
  }

  @override
  GallCharactersData rebuild(
          void Function(GallCharactersDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallCharactersDataBuilder toBuilder() =>
      new GallCharactersDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallCharactersData &&
        G__typename == other.G__typename &&
        characters == other.characters;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), characters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GallCharactersData')
          ..add('G__typename', G__typename)
          ..add('characters', characters))
        .toString();
  }
}

class GallCharactersDataBuilder
    implements Builder<GallCharactersData, GallCharactersDataBuilder> {
  _$GallCharactersData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GallCharactersData_charactersBuilder? _characters;
  GallCharactersData_charactersBuilder get characters =>
      _$this._characters ??= new GallCharactersData_charactersBuilder();
  set characters(GallCharactersData_charactersBuilder? characters) =>
      _$this._characters = characters;

  GallCharactersDataBuilder() {
    GallCharactersData._initializeBuilder(this);
  }

  GallCharactersDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _characters = $v.characters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallCharactersData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallCharactersData;
  }

  @override
  void update(void Function(GallCharactersDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallCharactersData build() => _build();

  _$GallCharactersData _build() {
    _$GallCharactersData _$result;
    try {
      _$result = _$v ??
          new _$GallCharactersData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GallCharactersData', 'G__typename'),
              characters: _characters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'characters';
        _characters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GallCharactersData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GallCharactersData_characters extends GallCharactersData_characters {
  @override
  final String G__typename;
  @override
  final GallCharactersData_characters_info? info;
  @override
  final BuiltList<GallCharactersData_characters_results>? results;

  factory _$GallCharactersData_characters(
          [void Function(GallCharactersData_charactersBuilder)? updates]) =>
      (new GallCharactersData_charactersBuilder()..update(updates))._build();

  _$GallCharactersData_characters._(
      {required this.G__typename, this.info, this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallCharactersData_characters', 'G__typename');
  }

  @override
  GallCharactersData_characters rebuild(
          void Function(GallCharactersData_charactersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallCharactersData_charactersBuilder toBuilder() =>
      new GallCharactersData_charactersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallCharactersData_characters &&
        G__typename == other.G__typename &&
        info == other.info &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, G__typename.hashCode), info.hashCode), results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GallCharactersData_characters')
          ..add('G__typename', G__typename)
          ..add('info', info)
          ..add('results', results))
        .toString();
  }
}

class GallCharactersData_charactersBuilder
    implements
        Builder<GallCharactersData_characters,
            GallCharactersData_charactersBuilder> {
  _$GallCharactersData_characters? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GallCharactersData_characters_infoBuilder? _info;
  GallCharactersData_characters_infoBuilder get info =>
      _$this._info ??= new GallCharactersData_characters_infoBuilder();
  set info(GallCharactersData_characters_infoBuilder? info) =>
      _$this._info = info;

  ListBuilder<GallCharactersData_characters_results>? _results;
  ListBuilder<GallCharactersData_characters_results> get results =>
      _$this._results ??=
          new ListBuilder<GallCharactersData_characters_results>();
  set results(ListBuilder<GallCharactersData_characters_results>? results) =>
      _$this._results = results;

  GallCharactersData_charactersBuilder() {
    GallCharactersData_characters._initializeBuilder(this);
  }

  GallCharactersData_charactersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _info = $v.info?.toBuilder();
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallCharactersData_characters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallCharactersData_characters;
  }

  @override
  void update(void Function(GallCharactersData_charactersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallCharactersData_characters build() => _build();

  _$GallCharactersData_characters _build() {
    _$GallCharactersData_characters _$result;
    try {
      _$result = _$v ??
          new _$GallCharactersData_characters._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GallCharactersData_characters', 'G__typename'),
              info: _info?.build(),
              results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GallCharactersData_characters', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GallCharactersData_characters_info
    extends GallCharactersData_characters_info {
  @override
  final String G__typename;
  @override
  final int? count;
  @override
  final int? pages;
  @override
  final int? next;

  factory _$GallCharactersData_characters_info(
          [void Function(GallCharactersData_characters_infoBuilder)?
              updates]) =>
      (new GallCharactersData_characters_infoBuilder()..update(updates))
          ._build();

  _$GallCharactersData_characters_info._(
      {required this.G__typename, this.count, this.pages, this.next})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallCharactersData_characters_info', 'G__typename');
  }

  @override
  GallCharactersData_characters_info rebuild(
          void Function(GallCharactersData_characters_infoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallCharactersData_characters_infoBuilder toBuilder() =>
      new GallCharactersData_characters_infoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallCharactersData_characters_info &&
        G__typename == other.G__typename &&
        count == other.count &&
        pages == other.pages &&
        next == other.next;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), count.hashCode), pages.hashCode),
        next.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GallCharactersData_characters_info')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('pages', pages)
          ..add('next', next))
        .toString();
  }
}

class GallCharactersData_characters_infoBuilder
    implements
        Builder<GallCharactersData_characters_info,
            GallCharactersData_characters_infoBuilder> {
  _$GallCharactersData_characters_info? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _pages;
  int? get pages => _$this._pages;
  set pages(int? pages) => _$this._pages = pages;

  int? _next;
  int? get next => _$this._next;
  set next(int? next) => _$this._next = next;

  GallCharactersData_characters_infoBuilder() {
    GallCharactersData_characters_info._initializeBuilder(this);
  }

  GallCharactersData_characters_infoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _pages = $v.pages;
      _next = $v.next;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallCharactersData_characters_info other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallCharactersData_characters_info;
  }

  @override
  void update(
      void Function(GallCharactersData_characters_infoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallCharactersData_characters_info build() => _build();

  _$GallCharactersData_characters_info _build() {
    final _$result = _$v ??
        new _$GallCharactersData_characters_info._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GallCharactersData_characters_info', 'G__typename'),
            count: count,
            pages: pages,
            next: next);
    replace(_$result);
    return _$result;
  }
}

class _$GallCharactersData_characters_results
    extends GallCharactersData_characters_results {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? species;
  @override
  final String? gender;
  @override
  final String? image;
  @override
  final String? created;

  factory _$GallCharactersData_characters_results(
          [void Function(GallCharactersData_characters_resultsBuilder)?
              updates]) =>
      (new GallCharactersData_characters_resultsBuilder()..update(updates))
          ._build();

  _$GallCharactersData_characters_results._(
      {required this.G__typename,
      this.id,
      this.name,
      this.species,
      this.gender,
      this.image,
      this.created})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallCharactersData_characters_results', 'G__typename');
  }

  @override
  GallCharactersData_characters_results rebuild(
          void Function(GallCharactersData_characters_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallCharactersData_characters_resultsBuilder toBuilder() =>
      new GallCharactersData_characters_resultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallCharactersData_characters_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        species == other.species &&
        gender == other.gender &&
        image == other.image &&
        created == other.created;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                        name.hashCode),
                    species.hashCode),
                gender.hashCode),
            image.hashCode),
        created.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GallCharactersData_characters_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('species', species)
          ..add('gender', gender)
          ..add('image', image)
          ..add('created', created))
        .toString();
  }
}

class GallCharactersData_characters_resultsBuilder
    implements
        Builder<GallCharactersData_characters_results,
            GallCharactersData_characters_resultsBuilder> {
  _$GallCharactersData_characters_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _species;
  String? get species => _$this._species;
  set species(String? species) => _$this._species = species;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _created;
  String? get created => _$this._created;
  set created(String? created) => _$this._created = created;

  GallCharactersData_characters_resultsBuilder() {
    GallCharactersData_characters_results._initializeBuilder(this);
  }

  GallCharactersData_characters_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _species = $v.species;
      _gender = $v.gender;
      _image = $v.image;
      _created = $v.created;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallCharactersData_characters_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallCharactersData_characters_results;
  }

  @override
  void update(
      void Function(GallCharactersData_characters_resultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallCharactersData_characters_results build() => _build();

  _$GallCharactersData_characters_results _build() {
    final _$result = _$v ??
        new _$GallCharactersData_characters_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GallCharactersData_characters_results', 'G__typename'),
            id: id,
            name: name,
            species: species,
            gender: gender,
            image: image,
            created: created);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
