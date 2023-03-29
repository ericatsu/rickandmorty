import 'package:fluttergraphql/shared/exports.dart';

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
      home: const SplashScreen(), 
    );
  }
}
