// navigation.dart
import 'package:flutter/material.dart';
import 'app_bar.dart'; // Mengimpor AppBarWidget

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<Navigation> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: const AppBarWidget(),
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
        /// Home page
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Home page',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),

        /// Story page
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.image),
                  title: Text('Story 1'),
                  subtitle: Text('This is a story'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.image),
                  title: Text('Story 2'),
                  subtitle: Text('This is another story'),
                ),
              ),
            ],
          ),
        ),

        /// Settings page
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Account Settings'),
                  onTap: () {
                    // Action on tap
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.lock),
                  title: Text('Privacy Settings'),
                  onTap: () {
                    // Action on tap
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Logout'),
                  onTap: () {
                    // Action on tap
                  },
                ),
              ),
            ],
          ),
        ),
      ][currentPageIndex],
    );
  }
}
