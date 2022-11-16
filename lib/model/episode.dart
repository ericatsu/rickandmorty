import 'package:json_annotation/json_annotation.dart';
part 'episode.g.dart';

@JsonSerializable()
class Episode {
  final String id;
  final String name;
  final String air_date;
  final String episode;
  // final List<Character> characters;
  final String created;

  Episode({
    required this.id,
    required this.name,
    required this.air_date,
    required this.episode,
    // required this.characters,
    required this.created,
  });

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeToJson(this);
}
