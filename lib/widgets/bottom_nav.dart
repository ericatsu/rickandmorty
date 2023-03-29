import 'package:fluttergraphql/shared/exports.dart';

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
    EpisodesPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: Container(
        color: const Color(0xFF00AFCA),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: GNav(
            backgroundColor: const Color(0xFF00AFCA),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.blue.shade200,
            onTabChange: _navigateBottomBar,
            gap: 6,
            padding: const EdgeInsets.all(8.0),
            tabs: const [
              GButton(
                icon: Icons.people,
                iconSize: 30,
                text: 'Character',
                textSize: 30,
              ),
              GButton(
                icon: Icons.location_pin,
                iconSize: 30,
                text: 'Location',
                textSize: 30,
              ),
              GButton(
                icon: Icons.movie,
                iconSize: 30,
                text: 'Episodes',
                textSize: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
