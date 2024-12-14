import 'package:flutter/material.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
    );
  }
}
