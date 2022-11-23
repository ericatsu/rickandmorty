import 'package:flutter/material.dart';
// import 'package:fluttergraphql/client/client.dart';
// import 'package:fluttergraphql/screens/location/alllocations.dart';
// import 'package:fluttergraphql/screens/location/location.dart';
import 'package:fluttergraphql/widgets/bottom_nav.dart';
import 'package:get/get.dart';

import 'screens/character/character.dart';
import 'screens/character/allcharacter_page.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => CharactersPage()),
        GetPage(name: '/character_page', page: () => CharacterPage()),
        // GetPage(name: '/', page: () => LocationsPage()),
        // GetPage(name: '/location', page: () => LocationPage()),
      ],
      home: BottomNav(),
    );
  }
}


