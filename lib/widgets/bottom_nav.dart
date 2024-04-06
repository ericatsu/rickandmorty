import 'package:flutter/cupertino.dart';
import 'package:rickandmorty/shared/exports.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    CharactersPage(),
    LocationsPage(),
    EpisodesPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width= MediaQuery.of(context).size.width;
    return Scaffold(
      body: _pages[_selectedIndex],
      backgroundColor: const Color.fromARGB(255, 241, 241, 241),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: height * 0.105,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 230, 230, 230),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 10,
                color: Colors.transparent,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 187, 187, 187),
                  borderRadius: BorderRadius.all(Radius.circular(15)
                  ),
                ),
                height: height * 0.06,
                width: width * 0.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    navIcon(CupertinoIcons.group, 0),
                    navIcon(CupertinoIcons.placemark, 1),
                    navIcon(CupertinoIcons.tv, 2),
                    navIcon(CupertinoIcons.person, 3),
                  ],
                ),
              ),
              Container(
                height: 10,
                color: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget navIcon(IconData icon, int index) {
    return IconButton(
      icon: Icon(icon, size: 26.0),
      color: _selectedIndex == index ? const Color.fromARGB(255, 28, 12, 248) : const Color.fromARGB(255, 102, 101, 101),
      onPressed: () {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}
