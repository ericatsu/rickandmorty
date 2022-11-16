import 'package:graphql/client.dart';

class RickandMortyApi {
  static final httpLink = HttpLink('https://rickandmortyapi.com/graphql');

  static String fetchAllCharactersGraphQl = """
query FetchAllCharacters(\$page: Int){
  characters(page: \$page) {
    results {
      id
    name
    status
    species
    type
    gender
    origin{
      id
      name
      type
      dimension
      
      created
    }
    location{
     id
      name
      type
      dimension
      
      created 
    }
    image
    episode{
      id
      name
      air_date
      episode
      
      created
    }
    created
    }
  }
}
""";
}
