class Character {
  final String id;
  final String name;
  final String species;
  final String type;
  final String image;
  final String status;
  final String gender;

  Character(this.id, this.name, this.species, this.type, this.image,
      this.status, this.gender);

  factory Character.fromJSON(dynamic data) {
    return Character(data["id"], data["name"], data["species"], data["type"],
        data["image"], data["status"], data["gender"]);
  }
}

class Location {
  final String id;
  final String name;
  final String type;
  final String dimension;
  final List<Character> residents;

  Location(this.id, this.name, this.type, this.dimension)
      : residents = <Character>[];

  factory Location.fromJSON(dynamic data) {
    return Location(data["id"], data["name"], data["type"], data["dimension"]);
  }

  void addResidents(List<Character> residentList) {
    residents.addAll(residentList);
  }
}

class Episode {
  final String id;
  final String name;
  final String air_date;
  final String episode;
  final List<Character> characters;

  Episode(this.id, this.name, this.air_date, this.episode)
      : characters = <Character>[];

  factory Episode.fromJSON(dynamic data) {
    return Episode(data["id"], data["name"], data["air_date"], data["episode"]);
  }

  void addCharacter(List<Character> characterList) {
    characters.addAll(characterList);
  }
}
