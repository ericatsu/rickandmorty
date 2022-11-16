// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Episode _$EpisodeFromJson(Map json) => Episode(
      id: json['id'] as String,
      name: json['name'] as String,
      air_date: json['air_date'] as String,
      episode: json['episode'] as String,
      created: json['created'] as String,
    );

Map<String, dynamic> _$EpisodeToJson(Episode instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'air_date': instance.air_date,
      'episode': instance.episode,
      'created': instance.created,
    };
