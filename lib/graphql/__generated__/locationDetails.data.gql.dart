// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluttergraphql/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'locationDetails.data.gql.g.dart';

abstract class GLocationDetailsData
    implements Built<GLocationDetailsData, GLocationDetailsDataBuilder> {
  GLocationDetailsData._();

  factory GLocationDetailsData(
          [Function(GLocationDetailsDataBuilder b) updates]) =
      _$GLocationDetailsData;

  static void _initializeBuilder(GLocationDetailsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLocationDetailsData_location? get location;
  static Serializer<GLocationDetailsData> get serializer =>
      _$gLocationDetailsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLocationDetailsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GLocationDetailsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLocationDetailsData.serializer,
        json,
      );
}

abstract class GLocationDetailsData_location
    implements
        Built<GLocationDetailsData_location,
            GLocationDetailsData_locationBuilder> {
  GLocationDetailsData_location._();

  factory GLocationDetailsData_location(
          [Function(GLocationDetailsData_locationBuilder b) updates]) =
      _$GLocationDetailsData_location;

  static void _initializeBuilder(GLocationDetailsData_locationBuilder b) =>
      b..G__typename = 'Location';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  BuiltList<GLocationDetailsData_location_residents>? get residents;
  static Serializer<GLocationDetailsData_location> get serializer =>
      _$gLocationDetailsDataLocationSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLocationDetailsData_location.serializer,
        this,
      ) as Map<String, dynamic>);
  static GLocationDetailsData_location? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLocationDetailsData_location.serializer,
        json,
      );
}

abstract class GLocationDetailsData_location_residents
    implements
        Built<GLocationDetailsData_location_residents,
            GLocationDetailsData_location_residentsBuilder> {
  GLocationDetailsData_location_residents._();

  factory GLocationDetailsData_location_residents(
      [Function(GLocationDetailsData_location_residentsBuilder b)
          updates]) = _$GLocationDetailsData_location_residents;

  static void _initializeBuilder(
          GLocationDetailsData_location_residentsBuilder b) =>
      b..G__typename = 'Character';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  String? get image;
  static Serializer<GLocationDetailsData_location_residents> get serializer =>
      _$gLocationDetailsDataLocationResidentsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLocationDetailsData_location_residents.serializer,
        this,
      ) as Map<String, dynamic>);
  static GLocationDetailsData_location_residents? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLocationDetailsData_location_residents.serializer,
        json,
      );
}
