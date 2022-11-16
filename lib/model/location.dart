import 'package:json_annotation/json_annotation.dart';
part 'location.g.dart';

@JsonSerializable()
class Location {
  final String? id;
  final String? name;
  final String? type;
  final String? dimension;

  final String? created;

  Location({
    required this.id,
    required this.name,
    required this.type,
    required this.dimension,
    required this.created,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
