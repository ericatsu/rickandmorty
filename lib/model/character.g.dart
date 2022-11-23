// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Character _$CharacterFromJson(Map json) => Character(
      id: json['id'] as String,
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      type: json['type'] as String,
      gender: json['gender'] as String,
      origin: json['origin'] == null
          ? null
          : Location.fromJson(Map<String, dynamic>.from(json['origin'] as Map)),
      location:
          Location.fromJson(Map<String, dynamic>.from(json['location'] as Map)),
      image: json['image'] as String,
      episode: (json['episode'] as List<dynamic>)
          .map((e) => Episode.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      created: json['created'] as String,
    );

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'origin': instance.origin?.toJson(),
      'location': instance.location.toJson(),
      'image': instance.image,
      'episode': instance.episode.map((e) => e.toJson()).toList(),
      'created': instance.created,
    };
