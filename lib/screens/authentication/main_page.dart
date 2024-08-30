import 'package:rickandmorty/shared/exports.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final user = Get.arguments as Map<String, dynamic>;

    final List<Widget> screens = [
      CharactersPage(user: user),
      LocationsPage(),
      EpisodesPage(),
    ];

    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNav(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
