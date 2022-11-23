import 'package:json_annotation/json_annotation.dart';

import 'episode.dart';
import 'location.dart';

part 'character.g.dart';

@JsonSerializable()
class Character {
  final String id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final Location? origin;
  final Location location;
  final String image;
  final List<Episode> episode;
  final String created;

  Character({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.created,
  });

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}
