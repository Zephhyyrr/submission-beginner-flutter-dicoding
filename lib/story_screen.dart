import 'package:flutter/material.dart';
import 'story_list.dart' as story_list; // Add an alias for the story_list.dart
import 'detail_screen.dart';

class StoryScreen extends StatelessWidget {
  StoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stories'),
      ),
      body: ListView.builder(
        itemCount: story_list.storyList.length, // Use the alias here
        itemBuilder: (context, index) {
          final story = story_list.storyList[index]; // Use the alias here
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(story: story),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.all(8.0),
              elevation: 4.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        story.imageAsset,
                        fit: BoxFit.cover,
                        height: 100.0,
                        width: 100.0,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            story.title,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            story.subtitle,
                            style: const TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF438BFF),
        onPressed: () {
          // Tambahkan aksi untuk tombol ini jika diperlukan.
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
