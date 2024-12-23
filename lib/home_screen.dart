import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'story_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Recent Story',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.network(
                      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.network(
                      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.network(
                      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Category Story',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildCategoryCard(
                      context, Icons.movie, 'Movies', StoryScreen()),
                  _buildCategoryCard(
                      context, Icons.book, 'Books', StoryScreen()),
                  _buildCategoryCard(
                      context, Icons.music_note, 'Music', StoryScreen()),
                  _buildCategoryCard(
                      context, Icons.games, 'Games', StoryScreen()),
                  _buildCategoryCard(
                      context, Icons.travel_explore, 'Travel', StoryScreen()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Popular Stories',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: popularStories.length, // Use the length of the list
              itemBuilder: (context, index) {
                final story = popularStories[index];
                return _buildPopularStoryCard(
                  story['title']!,
                  story['description']!,
                  story['image']!,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeaturedCard(String title, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(imageUrl, height: 150, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(
      BuildContext context, IconData icon, String label, Widget screen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Card(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.width * 0.15,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon),
              Text(
                label,
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularStoryCard(
      String title, String description, String imageUrl) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(imageUrl, height: 120, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(description),
          ),
        ],
      ),
    );
  }

  // Sample list of popular stories
  final List<Map<String, String>> popularStories = [
    {
      'title': 'A Day at the Beach',
      'description': 'An exciting adventure on the sandy shores.',
      'image': 'https://via.placeholder.com/150',
    },
    {
      'title': 'Mountain Adventures',
      'description': 'Hiking through the tallest peaks.',
      'image': 'https://via.placeholder.com/150',
    },
    {
      'title': 'City Lights',
      'description': 'Exploring the vibrant city nightlife.',
      'image': 'https://via.placeholder.com/150',
    },
    {
      'title': 'Forest Escape',
      'description': 'A peaceful retreat in the woods.',
      'image': 'https://via.placeholder.com/150',
    },
  ];
}
