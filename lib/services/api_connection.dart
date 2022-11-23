import 'package:graphql/client.dart';
import '../model/data_model.dart';

final apiConnection = ApiConnection();

class ApiConnection {
  final GraphQLClient _client = GraphQLClient(
    cache: GraphQLCache(),
    link: HttpLink('https://rickandmortyapi.com/graphql'),
  );

  Future<List<Character>> searchCharacter({String searchTerm = ""}) async {
    const String readCharacters = r'''
  query ReadCharacters($nameString: String!, $pageNumber: Int!) {
  characters(page: $pageNumber, filter: { name: $nameString }) {
    info {
      count
      pages
    }
    results {
      id
      name
      species
      type
      image
      status
      gender
    }
  }
}
''';

    List<dynamic> jsonList = <dynamic>[];

    int pages = 1;
    int pageCounter = 1;

    while (pageCounter <= pages) {
      final QueryOptions options = QueryOptions(
        document: gql(readCharacters),
        variables: <String, dynamic>{
          'pageNumber': pageCounter,
          'nameString': searchTerm,
        },
      );

      final QueryResult result = await _client.query(options);
      if (result.data != null) {
        pages = result.data!["characters"]["info"]["pages"];
        jsonList.addAll(result.data!["characters"]['results']);
        pageCounter++;
      } else {
        break;
      }
    }

    final List<Character> characterList = <Character>[];
    for (var element in jsonList) {
      characterList.add(Character.fromJSON(element));
    }

    return characterList;
  }

  Future<List<Location>> searchLocation({String searchTerm = ""}) async {
    const String readLocations = r'''
  query ReadLocations($nameString: String!, $pageNumber: Int!) {
  locations(page: $pageNumber, filter: { name: $nameString }) {
    info {
      count
      pages
    }
    results {
      id
      name
      type
      dimension
    }
  }
}
''';

    List<dynamic> jsonList = <dynamic>[];

    int pages = 1;
    int pageCounter = 1;

    while (pageCounter <= pages) {
      final QueryOptions options = QueryOptions(
        document: gql(readLocations),
        variables: <String, dynamic>{
          'pageNumber': pageCounter,
          'nameString': searchTerm,
        },
      );

      final QueryResult result = await _client.query(options);

      if (result.data != null) {
        pages = result.data!["locations"]["info"]["pages"];
        jsonList.addAll(result.data!["locations"]['results']);
        pageCounter++;
      } else {
        break;
      }
    }

    final List<Location> locationList = <Location>[];
    for (var element in jsonList) {
      locationList.add(Location.fromJSON(element));
    }

    return locationList;
  }

  Future<List<Episode>> searchEpisode({String searchTerm = ""}) async {
    const String readEpisodes = r'''
  query ReadEpisodes($nameString: String!, $pageNumber: Int!) {
  episodes(page: $pageNumber, filter: { name: $nameString }) {
    info {
      count
      pages
    }
    results {
      id
      name
      air_date
      episode
    }
  }
}
''';

    List<dynamic> jsonList = <dynamic>[];

    int pages = 1;
    int pageCounter = 1;

    while (pageCounter <= pages) {
      final QueryOptions options = QueryOptions(
        document: gql(readEpisodes),
        variables: <String, dynamic>{
          'pageNumber': pageCounter,
          'nameString': searchTerm,
        },
      );

      final QueryResult result = await _client.query(options);

      if (result.data != null) {
        pages = result.data!["episodes"]["info"]["pages"];
        jsonList.addAll(result.data!["episodes"]['results']);
        pageCounter++;
      } else {
        break;
      }
    }

    final List<Episode> episodeList = <Episode>[];
    for (var element in jsonList) {
      episodeList.add(Episode.fromJSON(element));
    }

    return episodeList;
  }

  Future<Location?> getLocation({required String locationId}) async {
    const String readLocation = r'''
  query ReadLocationById($locationId: ID!){
  location(id: $locationId) {
      id
      name
      type
      dimension
      residents {
        id
        name
        species
        type
        image
        status
        gender
      }
  }
}
''';

    List<dynamic> jsonList = <dynamic>[];

    final QueryOptions options = QueryOptions(
      document: gql(readLocation),
      variables: <String, dynamic>{
        'locationId': locationId,
      },
    );

    final QueryResult result = await _client.query(options);

    if (result.data != null) {
      jsonList.addAll(result.data!["location"]['residents']);

      final List<Character> residentList = <Character>[];
      for (var element in jsonList) {
        residentList.add(Character.fromJSON(element));
      }

      Location location = Location.fromJSON(result.data!["location"]);
      location.addResidents(residentList);
      return location;
    }

    return null;
  }

  Future<Episode?> getEpisode({required String episodeId}) async {
    const String readEpisode = r'''
  query ReadEpisodeById($episodeId: ID!){
  episode(id: $episodeId) {
      id
      name
      air_date
      episode
      characters {
        id
        name
        species
        type
        image
        status
        gender
      }
  }
}
''';

    List<dynamic> jsonList = <dynamic>[];

    final QueryOptions options = QueryOptions(
      document: gql(readEpisode),
      variables: <String, dynamic>{
        'episodeId': episodeId,
      },
    );

    final QueryResult result = await _client.query(options);

    if (result.data != null) {
      jsonList.addAll(result.data!["episode"]['characters']);

      final List<Character> characterList = <Character>[];
      for (var element in jsonList) {
        characterList.add(Character.fromJSON(element));
      }

      Episode episode = Episode.fromJSON(result.data!["episode"]);
      episode.addCharacter(characterList);
      return episode;
    }

    return null;
  }
}
