// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluttergraphql/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'allEpisodes.data.gql.g.dart';

abstract class GallEpisodesData
    implements Built<GallEpisodesData, GallEpisodesDataBuilder> {
  GallEpisodesData._();

  factory GallEpisodesData([Function(GallEpisodesDataBuilder b) updates]) =
      _$GallEpisodesData;

  static void _initializeBuilder(GallEpisodesDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GallEpisodesData_episodes? get episodes;
  static Serializer<GallEpisodesData> get serializer =>
      _$gallEpisodesDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallEpisodesData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GallEpisodesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallEpisodesData.serializer,
        json,
      );
}

abstract class GallEpisodesData_episodes
    implements
        Built<GallEpisodesData_episodes, GallEpisodesData_episodesBuilder> {
  GallEpisodesData_episodes._();

  factory GallEpisodesData_episodes(
          [Function(GallEpisodesData_episodesBuilder b) updates]) =
      _$GallEpisodesData_episodes;

  static void _initializeBuilder(GallEpisodesData_episodesBuilder b) =>
      b..G__typename = 'Episodes';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GallEpisodesData_episodes_info? get info;
  BuiltList<GallEpisodesData_episodes_results>? get results;
  static Serializer<GallEpisodesData_episodes> get serializer =>
      _$gallEpisodesDataEpisodesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallEpisodesData_episodes.serializer,
        this,
      ) as Map<String, dynamic>);
  static GallEpisodesData_episodes? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallEpisodesData_episodes.serializer,
        json,
      );
}

abstract class GallEpisodesData_episodes_info
    implements
        Built<GallEpisodesData_episodes_info,
            GallEpisodesData_episodes_infoBuilder> {
  GallEpisodesData_episodes_info._();

  factory GallEpisodesData_episodes_info(
          [Function(GallEpisodesData_episodes_infoBuilder b) updates]) =
      _$GallEpisodesData_episodes_info;

  static void _initializeBuilder(GallEpisodesData_episodes_infoBuilder b) =>
      b..G__typename = 'Info';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get count;
  int? get pages;
  int? get next;
  static Serializer<GallEpisodesData_episodes_info> get serializer =>
      _$gallEpisodesDataEpisodesInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallEpisodesData_episodes_info.serializer,
        this,
      ) as Map<String, dynamic>);
  static GallEpisodesData_episodes_info? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallEpisodesData_episodes_info.serializer,
        json,
      );
}

abstract class GallEpisodesData_episodes_results
    implements
        Built<GallEpisodesData_episodes_results,
            GallEpisodesData_episodes_resultsBuilder> {
  GallEpisodesData_episodes_results._();

  factory GallEpisodesData_episodes_results(
          [Function(GallEpisodesData_episodes_resultsBuilder b) updates]) =
      _$GallEpisodesData_episodes_results;

  static void _initializeBuilder(GallEpisodesData_episodes_resultsBuilder b) =>
      b..G__typename = 'Episode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get name;
  String? get air_date;
  String? get episode;
  String? get created;
  static Serializer<GallEpisodesData_episodes_results> get serializer =>
      _$gallEpisodesDataEpisodesResultsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallEpisodesData_episodes_results.serializer,
        this,
      ) as Map<String, dynamic>);
  static GallEpisodesData_episodes_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallEpisodesData_episodes_results.serializer,
        json,
      );
}
