import 'package:fluttergraphql/data/query.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class CharacterServices {
  final GraphQLClient _client = GraphQLClient(
    link: RickandMortyApi.httpLink,
    cache: GraphQLCache(store: InMemoryStore()),
  );

  Future<QueryResult> getResult(int page) async {
    final QueryOptions options = QueryOptions(
      document: gql(RickandMortyApi.fetchAllCharacterGraphQL),
      variables: <String, dynamic>{
        'page': page,
      },
    );
    final QueryResult result = await _client.query(options);

    return result;
  }
}
