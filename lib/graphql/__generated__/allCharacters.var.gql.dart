// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluttergraphql/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'allCharacters.var.gql.g.dart';

abstract class GallCharactersVars
    implements Built<GallCharactersVars, GallCharactersVarsBuilder> {
  GallCharactersVars._();

  factory GallCharactersVars([Function(GallCharactersVarsBuilder b) updates]) =
      _$GallCharactersVars;

  int? get page;
  static Serializer<GallCharactersVars> get serializer =>
      _$gallCharactersVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallCharactersVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GallCharactersVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallCharactersVars.serializer,
        json,
      );
}
