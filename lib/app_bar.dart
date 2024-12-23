import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF438BFF),
      title: const Text(
        'StoryApp',
        style: TextStyle(color: Colors.white),
      ),
      iconTheme: const IconThemeData(
        color: Colors.white, // Set the back arrow icon color to white
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
