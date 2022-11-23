// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluttergraphql/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'episodeDetails.var.gql.g.dart';

abstract class GepisodeDetailsVars
    implements Built<GepisodeDetailsVars, GepisodeDetailsVarsBuilder> {
  GepisodeDetailsVars._();

  factory GepisodeDetailsVars(
      [Function(GepisodeDetailsVarsBuilder b) updates]) = _$GepisodeDetailsVars;

  String get id;
  static Serializer<GepisodeDetailsVars> get serializer =>
      _$gepisodeDetailsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GepisodeDetailsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GepisodeDetailsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GepisodeDetailsVars.serializer,
        json,
      );
}
