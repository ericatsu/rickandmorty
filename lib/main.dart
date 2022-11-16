import 'package:flutter/material.dart';
import 'package:fluttergraphql/screens/home_page.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async {
  HttpLink link = HttpLink("https://rickandmortyapi.com/graphql");
  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: link,
      cache: GraphQLCache(store: InMemoryStore()),)
  );
  var app = GraphQLProvider(client: client, child: const MyApp(),);
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ricky & Morty',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Ricky & Morty'),
    );
  }
}


