// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:fluttergraphql/graphql/__generated__/allCharacters.data.gql.dart'
    show
        GallCharactersData,
        GallCharactersData_characters,
        GallCharactersData_characters_info,
        GallCharactersData_characters_results;
import 'package:fluttergraphql/graphql/__generated__/allCharacters.req.gql.dart'
    show GallCharactersReq;
import 'package:fluttergraphql/graphql/__generated__/allCharacters.var.gql.dart'
    show GallCharactersVars;
import 'package:fluttergraphql/graphql/__generated__/allEpisodes.data.gql.dart'
    show
        GallEpisodesData,
        GallEpisodesData_episodes,
        GallEpisodesData_episodes_info,
        GallEpisodesData_episodes_results;
import 'package:fluttergraphql/graphql/__generated__/allEpisodes.req.gql.dart'
    show GallEpisodesReq;
import 'package:fluttergraphql/graphql/__generated__/allEpisodes.var.gql.dart'
    show GallEpisodesVars;
import 'package:fluttergraphql/graphql/__generated__/allLocations.data.gql.dart'
    show
        GallLocationsData,
        GallLocationsData_locations,
        GallLocationsData_locations_info,
        GallLocationsData_locations_results;
import 'package:fluttergraphql/graphql/__generated__/allLocations.req.gql.dart'
    show GallLocationsReq;
import 'package:fluttergraphql/graphql/__generated__/allLocations.var.gql.dart'
    show GallLocationsVars;
import 'package:fluttergraphql/graphql/__generated__/characterDetails.data.gql.dart'
    show
        GcharacterDetailsData,
        GcharacterDetailsData_character,
        GcharacterDetailsData_character_episode,
        GcharacterDetailsData_character_origin;
import 'package:fluttergraphql/graphql/__generated__/characterDetails.req.gql.dart'
    show GcharacterDetailsReq;
import 'package:fluttergraphql/graphql/__generated__/characterDetails.var.gql.dart'
    show GcharacterDetailsVars;
import 'package:fluttergraphql/graphql/__generated__/episodeDetails.data.gql.dart'
    show
        GepisodeDetailsData,
        GepisodeDetailsData_episode,
        GepisodeDetailsData_episode_characters;
import 'package:fluttergraphql/graphql/__generated__/episodeDetails.req.gql.dart'
    show GepisodeDetailsReq;
import 'package:fluttergraphql/graphql/__generated__/episodeDetails.var.gql.dart'
    show GepisodeDetailsVars;
import 'package:fluttergraphql/graphql/__generated__/locationDetails.data.gql.dart'
    show
        GLocationDetailsData,
        GLocationDetailsData_location,
        GLocationDetailsData_location_residents;
import 'package:fluttergraphql/graphql/__generated__/locationDetails.req.gql.dart'
    show GLocationDetailsReq;
import 'package:fluttergraphql/graphql/__generated__/locationDetails.var.gql.dart'
    show GLocationDetailsVars;
import 'package:fluttergraphql/graphql/__generated__/schema.schema.gql.dart'
    show
        GCacheControlScope,
        GFilterCharacter,
        GFilterEpisode,
        GFilterLocation,
        GUpload;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCacheControlScope,
  GFilterCharacter,
  GFilterEpisode,
  GFilterLocation,
  GLocationDetailsData,
  GLocationDetailsData_location,
  GLocationDetailsData_location_residents,
  GLocationDetailsReq,
  GLocationDetailsVars,
  GUpload,
  GallCharactersData,
  GallCharactersData_characters,
  GallCharactersData_characters_info,
  GallCharactersData_characters_results,
  GallCharactersReq,
  GallCharactersVars,
  GallEpisodesData,
  GallEpisodesData_episodes,
  GallEpisodesData_episodes_info,
  GallEpisodesData_episodes_results,
  GallEpisodesReq,
  GallEpisodesVars,
  GallLocationsData,
  GallLocationsData_locations,
  GallLocationsData_locations_info,
  GallLocationsData_locations_results,
  GallLocationsReq,
  GallLocationsVars,
  GcharacterDetailsData,
  GcharacterDetailsData_character,
  GcharacterDetailsData_character_episode,
  GcharacterDetailsData_character_origin,
  GcharacterDetailsReq,
  GcharacterDetailsVars,
  GepisodeDetailsData,
  GepisodeDetailsData_episode,
  GepisodeDetailsData_episode_characters,
  GepisodeDetailsReq,
  GepisodeDetailsVars,
])
final Serializers serializers = _serializersBuilder.build();
