import 'package:http/http.dart';
import 'package:string_templates/string_templates.dart' as templates;


class HttpService {
  static String graphqlUrl = 'https://rickandmortyapi.com/graphql';

  static Future getCharacters() async {
   return await get(Uri());
  }

  static Future getLocations(int page) async {
    var params = <String, Object>{'page': page};
    return await get(Uri.parse(templates.interpolate(graphqlUrl, params)));
  }

  static Future getEpisode() async {
    return await get(Uri());
  }
}