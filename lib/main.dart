import 'package:rickandmorty/shared/exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final user = Get.arguments as Map<String, dynamic>;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translationsKeys: AppTranslation.translations,
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/login', page: () => const SignInPage()),
        GetPage(name: '/main', page: () => MainPage()),
      ],
    );
  }
}
