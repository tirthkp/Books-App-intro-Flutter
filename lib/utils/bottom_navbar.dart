import 'package:flutter/material.dart';

import '../pages/Favourites.dart';
import '../pages/homepage.dart';
import '../pages/search.dart';
import '../pages/settings.dart';

class MyNavbar extends StatefulWidget {
  const MyNavbar({Key? key}) : super(key: key);

  @override
  State<MyNavbar> createState() => _MyNavbarState();
}

class _MyNavbarState extends State<MyNavbar> {
  int _selectedIndex = 0;
  final pages = [
    const HomePage(),
    const Favourite(),
    const Search(),
    const Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.teal,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        showUnselectedLabels: false,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? const Icon(Icons.home)
                : const Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_outline),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? const Icon(Icons.search)
                : const Icon(Icons.search_rounded),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? const Icon(Icons.settings)
                : const Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
      body: Center(
        child: pages.elementAt(_selectedIndex),
      ),
    );
  }
}
