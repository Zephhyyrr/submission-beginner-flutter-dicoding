import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'story_screen.dart';
import 'setting_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor: const Color(0xFFFFFFFF),
        indicatorColor: const Color(0xFF438BFF),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: Color(0xFFFFFFFF),
            ),
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.image,
              color: Color(0xFFFFFFFF),
            ),
            icon: Icon(
              Icons.image,
              color: Colors.black,
            ),
            label: 'Story',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            label: 'Settings',
          ),
        ],
      ),
      body: <Widget>[
        HomeScreen(),
        StoryScreen(),
        const SettingScreen(),
      ][currentPageIndex],
    );
  }
}
