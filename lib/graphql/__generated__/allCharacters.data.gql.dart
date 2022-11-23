// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluttergraphql/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'allCharacters.data.gql.g.dart';

abstract class GallCharactersData
    implements Built<GallCharactersData, GallCharactersDataBuilder> {
  GallCharactersData._();

  factory GallCharactersData([Function(GallCharactersDataBuilder b) updates]) =
      _$GallCharactersData;

  static void _initializeBuilder(GallCharactersDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GallCharactersData_characters? get characters;
  static Serializer<GallCharactersData> get serializer =>
      _$gallCharactersDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallCharactersData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GallCharactersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallCharactersData.serializer,
        json,
      );
}

abstract class GallCharactersData_characters
    implements
        Built<GallCharactersData_characters,
            GallCharactersData_charactersBuilder> {
  GallCharactersData_characters._();

  factory GallCharactersData_characters(
          [Function(GallCharactersData_charactersBuilder b) updates]) =
      _$GallCharactersData_characters;

  static void _initializeBuilder(GallCharactersData_charactersBuilder b) =>
      b..G__typename = 'Characters';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GallCharactersData_characters_info? get info;
  BuiltList<GallCharactersData_characters_results>? get results;
  static Serializer<GallCharactersData_characters> get serializer =>
      _$gallCharactersDataCharactersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallCharactersData_characters.serializer,
        this,
      ) as Map<String, dynamic>);
  static GallCharactersData_characters? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallCharactersData_characters.serializer,
        json,
      );
}

abstract class GallCharactersData_characters_info
    implements
        Built<GallCharactersData_characters_info,
            GallCharactersData_characters_infoBuilder> {
  GallCharactersData_characters_info._();

  factory GallCharactersData_characters_info(
          [Function(GallCharactersData_characters_infoBuilder b) updates]) =
      _$GallCharactersData_characters_info;

  static void _initializeBuilder(GallCharactersData_characters_infoBuilder b) =>
      b..G__typename = 'Info';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get count;
  int? get pages;
  int? get next;
  static Serializer<GallCharactersData_characters_info> get serializer =>
      _$gallCharactersDataCharactersInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallCharactersData_characters_info.serializer,
        this,
      ) as Map<String, dynamic>);
  static GallCharactersData_characters_info? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallCharactersData_characters_info.serializer,
        json,
      );
}

abstract class GallCharactersData_characters_results
    implements
        Built<GallCharactersData_characters_results,
            GallCharactersData_characters_resultsBuilder> {
  GallCharactersData_characters_results._();

  factory GallCharactersData_characters_results(
          [Function(GallCharactersData_characters_resultsBuilder b) updates]) =
      _$GallCharactersData_characters_results;

  static void _initializeBuilder(
          GallCharactersData_characters_resultsBuilder b) =>
      b..G__typename = 'Character';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get name;
  String? get species;
  String? get gender;
  String? get image;
  String? get created;
  static Serializer<GallCharactersData_characters_results> get serializer =>
      _$gallCharactersDataCharactersResultsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallCharactersData_characters_results.serializer,
        this,
      ) as Map<String, dynamic>);
  static GallCharactersData_characters_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallCharactersData_characters_results.serializer,
        json,
      );
}
