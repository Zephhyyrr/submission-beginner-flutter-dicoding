import 'package:flutter/material.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Padding(
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
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF438BFF),
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ));
  }
}
