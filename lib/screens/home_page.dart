// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttergraphql/widgets/character_card.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../data/rick_morty_graphQL.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<dynamic> characters = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Query(
        options: QueryOptions(document: gql(rickMortyGraphQL)),
        builder: ((result, {fetchMore, refetch}) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          if (result.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final charaterList = result.data?['characters']['results'];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: charaterList.length,
                itemBuilder: (context, index) {
                  return CharacterCard(
                      image: Image(
                          image: NetworkImage(charaterList[index]['image'])),
                      name: charaterList[index]['name']);
                }),
          );
        }),
      ),
    );
  }
}
