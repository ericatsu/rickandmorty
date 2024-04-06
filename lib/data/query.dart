import 'package:graphql/client.dart';

class rickandmortyApi {
  static final httpLink = HttpLink('https://rickandmortyapi.com/graphql');

  static String fetchAllCharacterGraphQL = """
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

static String fetchAllLocationGraphQL = """ 
query FetchAllLocations(\$page: Int){
              locations(page: \$page){
                info {
                  count
                  pages
                }
                results {
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
            }
""";

static String fetchAllEpisodeGraphQL = """
query FetchAllEpisodes(\$page: Int){
 episodes(page: \$page){
  results{
    id
    name
    air_date
    episode
    created
    characters{
      id
      name
      status
      species
      type
      gender
      created
      }
    }
  }
} 

 """;
}
