import 'package:flutter/material.dart';
import 'package:fluttergraphql/widgets/bottom_nav.dart';
import 'package:get/get.dart';

import 'screens/character/character_page.dart';
import 'screens/character/characters_page.dart';

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
      ],
      home: BottomNav(),
    );
  }
}


