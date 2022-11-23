// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluttergraphql/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'allLocations.data.gql.g.dart';

abstract class GallLocationsData
    implements Built<GallLocationsData, GallLocationsDataBuilder> {
  GallLocationsData._();

  factory GallLocationsData([Function(GallLocationsDataBuilder b) updates]) =
      _$GallLocationsData;

  static void _initializeBuilder(GallLocationsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GallLocationsData_locations? get locations;
  static Serializer<GallLocationsData> get serializer =>
      _$gallLocationsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallLocationsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GallLocationsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallLocationsData.serializer,
        json,
      );
}

abstract class GallLocationsData_locations
    implements
        Built<GallLocationsData_locations, GallLocationsData_locationsBuilder> {
  GallLocationsData_locations._();

  factory GallLocationsData_locations(
          [Function(GallLocationsData_locationsBuilder b) updates]) =
      _$GallLocationsData_locations;

  static void _initializeBuilder(GallLocationsData_locationsBuilder b) =>
      b..G__typename = 'Locations';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GallLocationsData_locations_info? get info;
  BuiltList<GallLocationsData_locations_results>? get results;
  static Serializer<GallLocationsData_locations> get serializer =>
      _$gallLocationsDataLocationsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallLocationsData_locations.serializer,
        this,
      ) as Map<String, dynamic>);
  static GallLocationsData_locations? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallLocationsData_locations.serializer,
        json,
      );
}

abstract class GallLocationsData_locations_info
    implements
        Built<GallLocationsData_locations_info,
            GallLocationsData_locations_infoBuilder> {
  GallLocationsData_locations_info._();

  factory GallLocationsData_locations_info(
          [Function(GallLocationsData_locations_infoBuilder b) updates]) =
      _$GallLocationsData_locations_info;

  static void _initializeBuilder(GallLocationsData_locations_infoBuilder b) =>
      b..G__typename = 'Info';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get count;
  int? get pages;
  int? get next;
  static Serializer<GallLocationsData_locations_info> get serializer =>
      _$gallLocationsDataLocationsInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallLocationsData_locations_info.serializer,
        this,
      ) as Map<String, dynamic>);
  static GallLocationsData_locations_info? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallLocationsData_locations_info.serializer,
        json,
      );
}

abstract class GallLocationsData_locations_results
    implements
        Built<GallLocationsData_locations_results,
            GallLocationsData_locations_resultsBuilder> {
  GallLocationsData_locations_results._();

  factory GallLocationsData_locations_results(
          [Function(GallLocationsData_locations_resultsBuilder b) updates]) =
      _$GallLocationsData_locations_results;

  static void _initializeBuilder(
          GallLocationsData_locations_resultsBuilder b) =>
      b..G__typename = 'Location';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get name;
  String? get type;
  String? get dimension;
  String? get created;
  static Serializer<GallLocationsData_locations_results> get serializer =>
      _$gallLocationsDataLocationsResultsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallLocationsData_locations_results.serializer,
        this,
      ) as Map<String, dynamic>);
  static GallLocationsData_locations_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallLocationsData_locations_results.serializer,
        json,
      );
}
