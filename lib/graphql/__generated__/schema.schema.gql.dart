// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluttergraphql/graphql/__generated__/serializers.gql.dart'
    as _i1;
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i2;

part 'schema.schema.gql.g.dart';

class GCacheControlScope extends EnumClass {
  const GCacheControlScope._(String name) : super(name);

  static const GCacheControlScope PUBLIC = _$gCacheControlScopePUBLIC;

  static const GCacheControlScope PRIVATE = _$gCacheControlScopePRIVATE;

  static Serializer<GCacheControlScope> get serializer =>
      _$gCacheControlScopeSerializer;
  static BuiltSet<GCacheControlScope> get values => _$gCacheControlScopeValues;
  static GCacheControlScope valueOf(String name) =>
      _$gCacheControlScopeValueOf(name);
}

abstract class GFilterCharacter
    implements Built<GFilterCharacter, GFilterCharacterBuilder> {
  GFilterCharacter._();

  factory GFilterCharacter([Function(GFilterCharacterBuilder b) updates]) =
      _$GFilterCharacter;

  String? get name;
  String? get status;
  String? get species;
  String? get type;
  String? get gender;
  static Serializer<GFilterCharacter> get serializer =>
      _$gFilterCharacterSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFilterCharacter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFilterCharacter? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFilterCharacter.serializer,
        json,
      );
}

abstract class GFilterEpisode
    implements Built<GFilterEpisode, GFilterEpisodeBuilder> {
  GFilterEpisode._();

  factory GFilterEpisode([Function(GFilterEpisodeBuilder b) updates]) =
      _$GFilterEpisode;

  String? get name;
  String? get episode;
  static Serializer<GFilterEpisode> get serializer =>
      _$gFilterEpisodeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFilterEpisode.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFilterEpisode? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFilterEpisode.serializer,
        json,
      );
}

abstract class GFilterLocation
    implements Built<GFilterLocation, GFilterLocationBuilder> {
  GFilterLocation._();

  factory GFilterLocation([Function(GFilterLocationBuilder b) updates]) =
      _$GFilterLocation;

  String? get name;
  String? get type;
  String? get dimension;
  static Serializer<GFilterLocation> get serializer =>
      _$gFilterLocationSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFilterLocation.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFilterLocation? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFilterLocation.serializer,
        json,
      );
}

abstract class GUpload implements Built<GUpload, GUploadBuilder> {
  GUpload._();

  factory GUpload([String? value]) =>
      _$GUpload((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GUpload> get serializer =>
      _i2.DefaultScalarSerializer<GUpload>(
          (Object serialized) => GUpload((serialized as String?)));
}

const possibleTypesMap = {};
