// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allEpisodes.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GallEpisodesData> _$gallEpisodesDataSerializer =
    new _$GallEpisodesDataSerializer();
Serializer<GallEpisodesData_episodes> _$gallEpisodesDataEpisodesSerializer =
    new _$GallEpisodesData_episodesSerializer();
Serializer<GallEpisodesData_episodes_info>
    _$gallEpisodesDataEpisodesInfoSerializer =
    new _$GallEpisodesData_episodes_infoSerializer();
Serializer<GallEpisodesData_episodes_results>
    _$gallEpisodesDataEpisodesResultsSerializer =
    new _$GallEpisodesData_episodes_resultsSerializer();

class _$GallEpisodesDataSerializer
    implements StructuredSerializer<GallEpisodesData> {
  @override
  final Iterable<Type> types = const [GallEpisodesData, _$GallEpisodesData];
  @override
  final String wireName = 'GallEpisodesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GallEpisodesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.episodes;
    if (value != null) {
      result
        ..add('episodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GallEpisodesData_episodes)));
    }
    return result;
  }

  @override
  GallEpisodesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallEpisodesDataBuilder();

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
        case 'episodes':
          result.episodes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GallEpisodesData_episodes))!
              as GallEpisodesData_episodes);
          break;
      }
    }

    return result.build();
  }
}

class _$GallEpisodesData_episodesSerializer
    implements StructuredSerializer<GallEpisodesData_episodes> {
  @override
  final Iterable<Type> types = const [
    GallEpisodesData_episodes,
    _$GallEpisodesData_episodes
  ];
  @override
  final String wireName = 'GallEpisodesData_episodes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallEpisodesData_episodes object,
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
            specifiedType: const FullType(GallEpisodesData_episodes_info)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GallEpisodesData_episodes_results)])));
    }
    return result;
  }

  @override
  GallEpisodesData_episodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallEpisodesData_episodesBuilder();

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
                      const FullType(GallEpisodesData_episodes_info))!
              as GallEpisodesData_episodes_info);
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GallEpisodesData_episodes_results)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GallEpisodesData_episodes_infoSerializer
    implements StructuredSerializer<GallEpisodesData_episodes_info> {
  @override
  final Iterable<Type> types = const [
    GallEpisodesData_episodes_info,
    _$GallEpisodesData_episodes_info
  ];
  @override
  final String wireName = 'GallEpisodesData_episodes_info';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallEpisodesData_episodes_info object,
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
  GallEpisodesData_episodes_info deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallEpisodesData_episodes_infoBuilder();

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

class _$GallEpisodesData_episodes_resultsSerializer
    implements StructuredSerializer<GallEpisodesData_episodes_results> {
  @override
  final Iterable<Type> types = const [
    GallEpisodesData_episodes_results,
    _$GallEpisodesData_episodes_results
  ];
  @override
  final String wireName = 'GallEpisodesData_episodes_results';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallEpisodesData_episodes_results object,
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
    value = object.air_date;
    if (value != null) {
      result
        ..add('air_date')
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
  GallEpisodesData_episodes_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallEpisodesData_episodes_resultsBuilder();

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
        case 'air_date':
          result.air_date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'episode':
          result.episode = serializers.deserialize(value,
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

class _$GallEpisodesData extends GallEpisodesData {
  @override
  final String G__typename;
  @override
  final GallEpisodesData_episodes? episodes;

  factory _$GallEpisodesData(
          [void Function(GallEpisodesDataBuilder)? updates]) =>
      (new GallEpisodesDataBuilder()..update(updates))._build();

  _$GallEpisodesData._({required this.G__typename, this.episodes}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallEpisodesData', 'G__typename');
  }

  @override
  GallEpisodesData rebuild(void Function(GallEpisodesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallEpisodesDataBuilder toBuilder() =>
      new GallEpisodesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallEpisodesData &&
        G__typename == other.G__typename &&
        episodes == other.episodes;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), episodes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GallEpisodesData')
          ..add('G__typename', G__typename)
          ..add('episodes', episodes))
        .toString();
  }
}

class GallEpisodesDataBuilder
    implements Builder<GallEpisodesData, GallEpisodesDataBuilder> {
  _$GallEpisodesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GallEpisodesData_episodesBuilder? _episodes;
  GallEpisodesData_episodesBuilder get episodes =>
      _$this._episodes ??= new GallEpisodesData_episodesBuilder();
  set episodes(GallEpisodesData_episodesBuilder? episodes) =>
      _$this._episodes = episodes;

  GallEpisodesDataBuilder() {
    GallEpisodesData._initializeBuilder(this);
  }

  GallEpisodesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _episodes = $v.episodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallEpisodesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallEpisodesData;
  }

  @override
  void update(void Function(GallEpisodesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallEpisodesData build() => _build();

  _$GallEpisodesData _build() {
    _$GallEpisodesData _$result;
    try {
      _$result = _$v ??
          new _$GallEpisodesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GallEpisodesData', 'G__typename'),
              episodes: _episodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'episodes';
        _episodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GallEpisodesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GallEpisodesData_episodes extends GallEpisodesData_episodes {
  @override
  final String G__typename;
  @override
  final GallEpisodesData_episodes_info? info;
  @override
  final BuiltList<GallEpisodesData_episodes_results>? results;

  factory _$GallEpisodesData_episodes(
          [void Function(GallEpisodesData_episodesBuilder)? updates]) =>
      (new GallEpisodesData_episodesBuilder()..update(updates))._build();

  _$GallEpisodesData_episodes._(
      {required this.G__typename, this.info, this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallEpisodesData_episodes', 'G__typename');
  }

  @override
  GallEpisodesData_episodes rebuild(
          void Function(GallEpisodesData_episodesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallEpisodesData_episodesBuilder toBuilder() =>
      new GallEpisodesData_episodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallEpisodesData_episodes &&
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
    return (newBuiltValueToStringHelper(r'GallEpisodesData_episodes')
          ..add('G__typename', G__typename)
          ..add('info', info)
          ..add('results', results))
        .toString();
  }
}

class GallEpisodesData_episodesBuilder
    implements
        Builder<GallEpisodesData_episodes, GallEpisodesData_episodesBuilder> {
  _$GallEpisodesData_episodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GallEpisodesData_episodes_infoBuilder? _info;
  GallEpisodesData_episodes_infoBuilder get info =>
      _$this._info ??= new GallEpisodesData_episodes_infoBuilder();
  set info(GallEpisodesData_episodes_infoBuilder? info) => _$this._info = info;

  ListBuilder<GallEpisodesData_episodes_results>? _results;
  ListBuilder<GallEpisodesData_episodes_results> get results =>
      _$this._results ??= new ListBuilder<GallEpisodesData_episodes_results>();
  set results(ListBuilder<GallEpisodesData_episodes_results>? results) =>
      _$this._results = results;

  GallEpisodesData_episodesBuilder() {
    GallEpisodesData_episodes._initializeBuilder(this);
  }

  GallEpisodesData_episodesBuilder get _$this {
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
  void replace(GallEpisodesData_episodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallEpisodesData_episodes;
  }

  @override
  void update(void Function(GallEpisodesData_episodesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallEpisodesData_episodes build() => _build();

  _$GallEpisodesData_episodes _build() {
    _$GallEpisodesData_episodes _$result;
    try {
      _$result = _$v ??
          new _$GallEpisodesData_episodes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GallEpisodesData_episodes', 'G__typename'),
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
            r'GallEpisodesData_episodes', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GallEpisodesData_episodes_info extends GallEpisodesData_episodes_info {
  @override
  final String G__typename;
  @override
  final int? count;
  @override
  final int? pages;
  @override
  final int? next;

  factory _$GallEpisodesData_episodes_info(
          [void Function(GallEpisodesData_episodes_infoBuilder)? updates]) =>
      (new GallEpisodesData_episodes_infoBuilder()..update(updates))._build();

  _$GallEpisodesData_episodes_info._(
      {required this.G__typename, this.count, this.pages, this.next})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallEpisodesData_episodes_info', 'G__typename');
  }

  @override
  GallEpisodesData_episodes_info rebuild(
          void Function(GallEpisodesData_episodes_infoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallEpisodesData_episodes_infoBuilder toBuilder() =>
      new GallEpisodesData_episodes_infoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallEpisodesData_episodes_info &&
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
    return (newBuiltValueToStringHelper(r'GallEpisodesData_episodes_info')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('pages', pages)
          ..add('next', next))
        .toString();
  }
}

class GallEpisodesData_episodes_infoBuilder
    implements
        Builder<GallEpisodesData_episodes_info,
            GallEpisodesData_episodes_infoBuilder> {
  _$GallEpisodesData_episodes_info? _$v;

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

  GallEpisodesData_episodes_infoBuilder() {
    GallEpisodesData_episodes_info._initializeBuilder(this);
  }

  GallEpisodesData_episodes_infoBuilder get _$this {
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
  void replace(GallEpisodesData_episodes_info other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallEpisodesData_episodes_info;
  }

  @override
  void update(void Function(GallEpisodesData_episodes_infoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallEpisodesData_episodes_info build() => _build();

  _$GallEpisodesData_episodes_info _build() {
    final _$result = _$v ??
        new _$GallEpisodesData_episodes_info._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GallEpisodesData_episodes_info', 'G__typename'),
            count: count,
            pages: pages,
            next: next);
    replace(_$result);
    return _$result;
  }
}

class _$GallEpisodesData_episodes_results
    extends GallEpisodesData_episodes_results {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? air_date;
  @override
  final String? episode;
  @override
  final String? created;

  factory _$GallEpisodesData_episodes_results(
          [void Function(GallEpisodesData_episodes_resultsBuilder)? updates]) =>
      (new GallEpisodesData_episodes_resultsBuilder()..update(updates))
          ._build();

  _$GallEpisodesData_episodes_results._(
      {required this.G__typename,
      this.id,
      this.name,
      this.air_date,
      this.episode,
      this.created})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallEpisodesData_episodes_results', 'G__typename');
  }

  @override
  GallEpisodesData_episodes_results rebuild(
          void Function(GallEpisodesData_episodes_resultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallEpisodesData_episodes_resultsBuilder toBuilder() =>
      new GallEpisodesData_episodes_resultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallEpisodesData_episodes_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        air_date == other.air_date &&
        episode == other.episode &&
        created == other.created;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    name.hashCode),
                air_date.hashCode),
            episode.hashCode),
        created.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GallEpisodesData_episodes_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('air_date', air_date)
          ..add('episode', episode)
          ..add('created', created))
        .toString();
  }
}

class GallEpisodesData_episodes_resultsBuilder
    implements
        Builder<GallEpisodesData_episodes_results,
            GallEpisodesData_episodes_resultsBuilder> {
  _$GallEpisodesData_episodes_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _air_date;
  String? get air_date => _$this._air_date;
  set air_date(String? air_date) => _$this._air_date = air_date;

  String? _episode;
  String? get episode => _$this._episode;
  set episode(String? episode) => _$this._episode = episode;

  String? _created;
  String? get created => _$this._created;
  set created(String? created) => _$this._created = created;

  GallEpisodesData_episodes_resultsBuilder() {
    GallEpisodesData_episodes_results._initializeBuilder(this);
  }

  GallEpisodesData_episodes_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _air_date = $v.air_date;
      _episode = $v.episode;
      _created = $v.created;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallEpisodesData_episodes_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallEpisodesData_episodes_results;
  }

  @override
  void update(
      void Function(GallEpisodesData_episodes_resultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallEpisodesData_episodes_results build() => _build();

  _$GallEpisodesData_episodes_results _build() {
    final _$result = _$v ??
        new _$GallEpisodesData_episodes_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GallEpisodesData_episodes_results', 'G__typename'),
            id: id,
            name: name,
            air_date: air_date,
            episode: episode,
            created: created);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
