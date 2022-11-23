// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluttergraphql/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'episodeDetails.data.gql.g.dart';

abstract class GepisodeDetailsData
    implements Built<GepisodeDetailsData, GepisodeDetailsDataBuilder> {
  GepisodeDetailsData._();

  factory GepisodeDetailsData(
      [Function(GepisodeDetailsDataBuilder b) updates]) = _$GepisodeDetailsData;

  static void _initializeBuilder(GepisodeDetailsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GepisodeDetailsData_episode? get episode;
  static Serializer<GepisodeDetailsData> get serializer =>
      _$gepisodeDetailsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GepisodeDetailsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GepisodeDetailsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GepisodeDetailsData.serializer,
        json,
      );
}

abstract class GepisodeDetailsData_episode
    implements
        Built<GepisodeDetailsData_episode, GepisodeDetailsData_episodeBuilder> {
  GepisodeDetailsData_episode._();

  factory GepisodeDetailsData_episode(
          [Function(GepisodeDetailsData_episodeBuilder b) updates]) =
      _$GepisodeDetailsData_episode;

  static void _initializeBuilder(GepisodeDetailsData_episodeBuilder b) =>
      b..G__typename = 'Episode';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get name;
  String? get air_date;
  String? get episode;
  BuiltList<GepisodeDetailsData_episode_characters>? get characters;
  static Serializer<GepisodeDetailsData_episode> get serializer =>
      _$gepisodeDetailsDataEpisodeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GepisodeDetailsData_episode.serializer,
        this,
      ) as Map<String, dynamic>);
  static GepisodeDetailsData_episode? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GepisodeDetailsData_episode.serializer,
        json,
      );
}

abstract class GepisodeDetailsData_episode_characters
    implements
        Built<GepisodeDetailsData_episode_characters,
            GepisodeDetailsData_episode_charactersBuilder> {
  GepisodeDetailsData_episode_characters._();

  factory GepisodeDetailsData_episode_characters(
          [Function(GepisodeDetailsData_episode_charactersBuilder b) updates]) =
      _$GepisodeDetailsData_episode_characters;

  static void _initializeBuilder(
          GepisodeDetailsData_episode_charactersBuilder b) =>
      b..G__typename = 'Character';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  String? get image;
  static Serializer<GepisodeDetailsData_episode_characters> get serializer =>
      _$gepisodeDetailsDataEpisodeCharactersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GepisodeDetailsData_episode_characters.serializer,
        this,
      ) as Map<String, dynamic>);
  static GepisodeDetailsData_episode_characters? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GepisodeDetailsData_episode_characters.serializer,
        json,
      );
}
