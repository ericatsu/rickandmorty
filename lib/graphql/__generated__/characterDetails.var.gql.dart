// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluttergraphql/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'characterDetails.var.gql.g.dart';

abstract class GcharacterDetailsVars
    implements Built<GcharacterDetailsVars, GcharacterDetailsVarsBuilder> {
  GcharacterDetailsVars._();

  factory GcharacterDetailsVars(
          [Function(GcharacterDetailsVarsBuilder b) updates]) =
      _$GcharacterDetailsVars;

  String get id;
  static Serializer<GcharacterDetailsVars> get serializer =>
      _$gcharacterDetailsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcharacterDetailsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GcharacterDetailsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcharacterDetailsVars.serializer,
        json,
      );
}
