import 'package:json_annotation/json_annotation.dart';

import 'character.dart';
part 'location.g.dart';

@JsonSerializable()
class Location {
  final String? id;
  final String? name;
  final String? type;
  final String? dimension;
  final List<Character> residents;
  final String? created;

  Location({
    required this.id,
    required this.name,
    required this.type,
    required this.dimension,
    required this.created,
    required this.residents,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
