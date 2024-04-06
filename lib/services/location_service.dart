import 'package:rickandmorty/data/query.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class LocationServices {
  final GraphQLClient _client = GraphQLClient(
    link: rickandmortyApi.httpLink,
    cache: GraphQLCache(store: InMemoryStore()),
  );

  Future<QueryResult> getResult(int page) async {
    final QueryOptions options = QueryOptions(
      document: gql(rickandmortyApi.fetchAllLocationGraphQL),
      variables: <String, dynamic>{
        'page': page,
      },
    );
    final QueryResult result = await _client.query(options);

    return result;
  }
}
