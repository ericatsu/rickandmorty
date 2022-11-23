// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allLocations.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GallLocationsData> _$gallLocationsDataSerializer =
    new _$GallLocationsDataSerializer();
Serializer<GallLocationsData_locations> _$gallLocationsDataLocationsSerializer =
    new _$GallLocationsData_locationsSerializer();
Serializer<GallLocationsData_locations_info>
    _$gallLocationsDataLocationsInfoSerializer =
    new _$GallLocationsData_locations_infoSerializer();
Serializer<GallLocationsData_locations_results>
    _$gallLocationsDataLocationsResultsSerializer =
    new _$GallLocationsData_locations_resultsSerializer();

class _$GallLocationsDataSerializer
    implements StructuredSerializer<GallLocationsData> {
  @override
  final Iterable<Type> types = const [GallLocationsData, _$GallLocationsData];
  @override
  final String wireName = 'GallLocationsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GallLocationsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.locations;
    if (value != null) {
      result
        ..add('locations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GallLocationsData_locations)));
    }
    return result;
  }

  @override
  GallLocationsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallLocationsDataBuilder();

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
        case 'locations':
          result.locations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GallLocationsData_locations))!
              as GallLocationsData_locations);
          break;
      }
    }

    return result.build();
  }
}

class _$GallLocationsData_locationsSerializer
    implements StructuredSerializer<GallLocationsData_locations> {
  @override
  final Iterable<Type> types = const [
    GallLocationsData_locations,
    _$GallLocationsData_locations
  ];
  @override
  final String wireName = 'GallLocationsData_locations';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallLocationsData_locations object,
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
            specifiedType: const FullType(GallLocationsData_locations_info)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GallLocationsData_locations_results)])));
    }
    return result;
  }

  @override
  GallLocationsData_locations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallLocationsData_locationsBuilder();

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
                      const FullType(GallLocationsData_locations_info))!
              as GallLocationsData_locations_info);
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GallLocationsData_locations_results)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GallLocationsData_locations_infoSerializer
    implements StructuredSerializer<GallLocationsData_locations_info> {
  @override
  final Iterable<Type> types = const [
    GallLocationsData_locations_info,
    _$GallLocationsData_locations_info
  ];
  @override
  final String wireName = 'GallLocationsData_locations_info';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallLocationsData_locations_info object,
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
  GallLocationsData_locations_info deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallLocationsData_locations_infoBuilder();

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

class _$GallLocationsData_locations_resultsSerializer
    implements StructuredSerializer<GallLocationsData_locations_results> {
  @override
  final Iterable<Type> types = const [
    GallLocationsData_locations_results,
    _$GallLocationsData_locations_results
  ];
  @override
  final String wireName = 'GallLocationsData_locations_results';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallLocationsData_locations_results object,
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
  GallLocationsData_locations_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallLocationsData_locations_resultsBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dimension':
          result.dimension = serializers.deserialize(value,
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

class _$GallLocationsData extends GallLocationsData {
  @override
  final String G__typename;
  @override
  final GallLocationsData_locations? locations;

  factory _$GallLocationsData(
          [void Function(GallLocationsDataBuilder)? updates]) =>
      (new GallLocationsDataBuilder()..update(updates))._build();

  _$GallLocationsData._({required this.G__typename, this.locations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallLocationsData', 'G__typename');
  }

  @override
  GallLocationsData rebuild(void Function(GallLocationsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallLocationsDataBuilder toBuilder() =>
      new GallLocationsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallLocationsData &&
        G__typename == other.G__typename &&
        locations == other.locations;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), locations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GallLocationsData')
          ..add('G__typename', G__typename)
          ..add('locations', locations))
        .toString();
  }
}

class GallLocationsDataBuilder
    implements Builder<GallLocationsData, GallLocationsDataBuilder> {
  _$GallLocationsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GallLocationsData_locationsBuilder? _locations;
  GallLocationsData_locationsBuilder get locations =>
      _$this._locations ??= new GallLocationsData_locationsBuilder();
  set locations(GallLocationsData_locationsBuilder? locations) =>
      _$this._locations = locations;

  GallLocationsDataBuilder() {
    GallLocationsData._initializeBuilder(this);
  }

  GallLocationsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _locations = $v.locations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallLocationsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallLocationsData;
  }

  @override
  void update(void Function(GallLocationsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallLocationsData build() => _build();

  _$GallLocationsData _build() {
    _$GallLocationsData _$result;
    try {
      _$result = _$v ??
          new _$GallLocationsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GallLocationsData', 'G__typename'),
              locations: _locations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'locations';
        _locations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GallLocationsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GallLocationsData_locations extends GallLocationsData_locations {
  @override
  final String G__typename;
  @override
  final GallLocationsData_locations_info? info;
  @override
  final BuiltList<GallLocationsData_locations_results>? results;

  factory _$GallLocationsData_locations(
          [void Function(GallLocationsData_locationsBuilder)? updates]) =>
      (new GallLocationsData_locationsBuilder()..update(updates))._build();

  _$GallLocationsData_locations._(
      {required this.G__typename, this.info, this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallLocationsData_locations', 'G__typename');
  }

  @override
  GallLocationsData_locations rebuild(
          void Function(GallLocationsData_locationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallLocationsData_locationsBuilder toBuilder() =>
      new GallLocationsData_locationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallLocationsData_locations &&
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
    return (newBuiltValueToStringHelper(r'GallLocationsData_locations')
          ..add('G__typename', G__typename)
          ..add('info', info)
          ..add('results', results))
        .toString();
  }
}

class GallLocationsData_locationsBuilder
    implements
        Builder<GallLocationsData_locations,
            GallLocationsData_locationsBuilder> {
  _$GallLocationsData_locations? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GallLocationsData_locations_infoBuilder? _info;
  GallLocationsData_locations_infoBuilder get info =>
      _$this._info ??= new GallLocationsData_locations_infoBuilder();
  set info(GallLocationsData_locations_infoBuilder? info) =>
      _$this._info = info;

  ListBuilder<GallLocationsData_locations_results>? _results;
  ListBuilder<GallLocationsData_locations_results> get results =>
      _$this._results ??=
          new ListBuilder<GallLocationsData_locations_results>();
  set results(ListBuilder<GallLocationsData_locations_results>? results) =>
      _$this._results = results;

  GallLocationsData_locationsBuilder() {
    GallLocationsData_locations._initializeBuilder(this);
  }

  GallLocationsData_locationsBuilder get _$this {
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
  void replace(GallLocationsData_locations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallLocationsData_locations;
  }

  @override
  void update(void Function(GallLocationsData_locationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallLocationsData_locations build() => _build();

  _$GallLocationsData_locations _build() {
    _$GallLocationsData_locations _$result;
    try {
      _$result = _$v ??
          new _$GallLocationsData_locations._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GallLocationsData_locations', 'G__typename'),
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
            r'GallLocationsData_locations', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GallLocationsData_locations_info
    extends GallLocationsData_locations_info {
  @override
  final String G__typename;
  @override
  final int? count;
  @override
  final int? pages;
  @override
  final int? next;

  factory _$GallLocationsData_locations_info(
          [void Function(GallLocationsData_locations_infoBuilder)? updates]) =>
      (new GallLocationsData_locations_infoBuilder()..update(updates))._build();

  _$GallLocationsData_locations_info._(
      {required this.G__typename, this.count, this.pages, this.next})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallLocationsData_locations_info', 'G__typename');
  }

  @override
  GallLocationsData_locations_info rebuild(
          void Function(GallLocationsData_locations_infoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallLocationsData_locations_infoBuilder toBuilder() =>
      new GallLocationsData_locations_infoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallLocationsData_locations_info &&
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
    return (newBuiltValueToStringHelper(r'GallLocationsData_locations_info')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('pages', pages)
          ..add('next', next))
        .toString();
  }
}

class GallLocationsData_locations_infoBuilder
    implements
        Builder<GallLocationsData_locations_info,
            GallLocationsData_locations_infoBuilder> {
  _$GallLocationsData_locations_info? _$v;

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

  GallLocationsData_locations_infoBuilder() {
    GallLocationsData_locations_info._initializeBuilder(this);
  }

  GallLocationsData_locations_infoBuilder get _$this {
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
  void replace(GallLocationsData_locations_info other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallLocationsData_locations_info;
  }

  @override
  void update(void Function(GallLocationsData_locations_infoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallLocationsData_locations_info build() => _build();

  _$GallLocationsData_locations_info _build() {
    final _$result = _$v ??
        new _$GallLocationsData_locations_info._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GallLocationsData_locations_info', 'G__typename'),
            count: count,
            pages: pages,
            next: next);
    replace(_$result);
    return _$result;
  }
}

class _$GallLocationsData_locations_results
    extends GallLocationsData_locations_results {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? dimension;
  @override
  final String? created;

  factory _$GallLocationsData_locations_results(
          [void Function(GallLocationsData_locations_resultsBuilder)?
              updates]) =>
      (new GallLocationsData_locations_resultsBuilder()..update(updates))
          ._build();

  _$GallLocationsData_locations_results._(
      {required this.G__typename,
      this.id,
      this.name,
      this.type,
      this.dimension,
      this.created})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallLocationsData_locations_results', 'G__typename');
  }

  @override
  GallLocationsData_locations_results rebuild(
          void Function(GallLocationsData_locations_resultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallLocationsData_locations_resultsBuilder toBuilder() =>
      new GallLocationsData_locations_resultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallLocationsData_locations_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        dimension == other.dimension &&
        created == other.created;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    name.hashCode),
                type.hashCode),
            dimension.hashCode),
        created.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GallLocationsData_locations_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('type', type)
          ..add('dimension', dimension)
          ..add('created', created))
        .toString();
  }
}

class GallLocationsData_locations_resultsBuilder
    implements
        Builder<GallLocationsData_locations_results,
            GallLocationsData_locations_resultsBuilder> {
  _$GallLocationsData_locations_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _dimension;
  String? get dimension => _$this._dimension;
  set dimension(String? dimension) => _$this._dimension = dimension;

  String? _created;
  String? get created => _$this._created;
  set created(String? created) => _$this._created = created;

  GallLocationsData_locations_resultsBuilder() {
    GallLocationsData_locations_results._initializeBuilder(this);
  }

  GallLocationsData_locations_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _dimension = $v.dimension;
      _created = $v.created;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallLocationsData_locations_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallLocationsData_locations_results;
  }

  @override
  void update(
      void Function(GallLocationsData_locations_resultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallLocationsData_locations_results build() => _build();

  _$GallLocationsData_locations_results _build() {
    final _$result = _$v ??
        new _$GallLocationsData_locations_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GallLocationsData_locations_results', 'G__typename'),
            id: id,
            name: name,
            type: type,
            dimension: dimension,
            created: created);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
