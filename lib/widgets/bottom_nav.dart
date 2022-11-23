import 'package:flutter/material.dart';
import 'package:fluttergraphql/screens/episode/allepisodes.dart';
import 'package:fluttergraphql/screens/location/alllocations.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../screens/character/allcharacter_page.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
              backgroundColor: Color(0xFF00AFCA),
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.blue.shade200,
              onTabChange: _navigateBottomBar,
              
              gap: 8,
              padding: EdgeInsets.all(8.0),
              tabs: const [
                GButton(
                  icon: Icons.people,
                  text: 'Character',
                ),
                GButton(icon: Icons.location_pin, text: 'Location'),
                GButton(icon: Icons.movie, text: 'Episodes'),
              ],
              ),
        ),
      ),
    );
  }
}