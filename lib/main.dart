import 'package:flutter/material.dart';
import 'package:fluttergraphql/screens/episode/allepisodes.dart';
import 'package:fluttergraphql/screens/episode/episode.dart';
// import 'package:fluttergraphql/client/client.dart';
// import 'package:fluttergraphql/screens/location/alllocations.dart';
// import 'package:fluttergraphql/screens/location/location.dart';
import 'package:fluttergraphql/widgets/bottom_nav.dart';
import 'package:get/get.dart';
import 'package:get_cli/core/locales.g.dart';

import 'screens/character/character.dart';
import 'screens/character/allcharacter_page.dart';
import 'screens/location/alllocations.dart';
import 'screens/location/location.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translationsKeys: AppTranslation.translations,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => CharactersPage(), children: [
          GetPage(name: '/character_page', page: () => CharacterPage()),
        ]),
        GetPage(name: '/', page: () => LocationsPage(), children: [
          GetPage(name: '/location', page: () => LocationPage()),
        ]),
        GetPage(name: '/', page: () => EpisodesPage(), children: [
          GetPage(name: '/episode', page: () => EpisodePage()),
        ]),
      ],
      home: const BottomNav(),
    );
  }
}
