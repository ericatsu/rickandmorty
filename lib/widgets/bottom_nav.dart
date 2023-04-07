import 'package:rickAndmorty/shared/exports.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    CharactersPage(),
    LocationsPage(),
    EpisodesPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: Container(
        height: 65,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 224, 233, 232),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
          child: GNav(
            backgroundColor: Colors.white,
            activeColor: Colors.blue,
            onTabChange: _navigateBottomBar,
            padding: const EdgeInsets.all(6.0),
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            tabs: const [
              GButton(
                icon: Icons.people,
                iconColor: Colors.blue,
                iconActiveColor: Colors.black,
                iconSize: 25,
              ),
              GButton(
                icon: Icons.location_pin,
                iconColor: Colors.blue,
                iconActiveColor: Colors.black,
                iconSize: 25,
              ),
              GButton(
                icon: Icons.movie,
                iconColor: Colors.blue,
                iconActiveColor: Colors.black,
                iconSize: 25,
              ),
              GButton(
                icon: Icons.person_2_outlined,
                iconColor: Colors.blue,
                iconActiveColor: Colors.black,
                iconSize: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
