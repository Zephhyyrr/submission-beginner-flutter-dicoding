import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'detail_screen.dart';
import 'story_list.dart';
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
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to the DetailScreen with a sample story
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              story: Story(
                                title: 'Farmhouse Lembang',
                                description:
                                    'A beautiful view of the farmhouse.',
                                imageAsset:
                                    'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
                                subtitle: 'Travel',
                              ),
                            ),
                          ),
                        );
                      },
                      child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to the DetailScreen with a sample story
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              story: Story(
                                title: 'Photo 3',
                                description: 'A lovely scene.',
                                imageAsset:
                                    'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
                                subtitle: 'Scenic',
                              ),
                            ),
                          ),
                        );
                      },
                      child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to the DetailScreen with a sample story
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              story: Story(
                                title: 'Farmhouse View',
                                description: 'A scenic view of the farmhouse.',
                                imageAsset:
                                    'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg',
                                subtitle: 'Vacation',
                              ),
                            ),
                          ),
                        );
                      },
                      child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg',
                      ),
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
                      context, Icons.movie, 'Movies', const StoryScreen()),
                  _buildCategoryCard(
                      context, Icons.book, 'Books', const StoryScreen()),
                  _buildCategoryCard(
                      context, Icons.music_note, 'Music', const StoryScreen()),
                  _buildCategoryCard(
                      context, Icons.games, 'Games', const StoryScreen()),
                  _buildCategoryCard(context, Icons.travel_explore, 'Travel',
                      const StoryScreen()),
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
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: popularStories.length,
              itemBuilder: (context, index) {
                final story = popularStories[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(story: story),
                      ),
                    );
                  },
                  child: _buildPopularStoryCard(
                    story.title,
                    story.description,
                    story.imageAsset,
                  ),
                );
              },
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
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.width * 0.15,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon),
              Text(
                label,
                style: const TextStyle(fontSize: 12),
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
              style: const TextStyle(fontWeight: FontWeight.bold),
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

  final List<Story> popularStories = [
    Story(
      title: 'A Day at the Beach',
      description: 'An exciting adventure on the sandy shores.',
      imageAsset:
          'https://media.istockphoto.com/id/1211311866/photo/stylish-casual-woman-enjoying-sun-at-tropical-beach.jpg?s=612x612&w=0&k=20&c=N4E7SOZpDVArDLxQNBt8KgI4xRvFW3ERx8ifaYvDXYM=',
      subtitle: 'Adventure',
    ),
    Story(
      title: 'Mountain Adventures',
      description: 'Hiking through the tallest peaks.',
      imageAsset:
          'https://media.istockphoto.com/id/466464914/photo/hiker.jpg?s=612x612&w=0&k=20&c=JQsPKlROgdc_gFcMwpaER5Sk5uK9O80yZj4VB9rKQZ4=',
      subtitle: 'Hiking',
    ),
    Story(
      title: 'City Lights',
      description: 'Exploring the vibrant city nightlife.',
      imageAsset:
          'https://asset.kompas.com/crops/5wkTWPxJ2WIn03K8jq3KmEnPVFA=/0x0:778x389/1200x800/data/photo/2018/11/21/1268730124.jpg',
      subtitle: 'Urban',
    ),
    Story(
      title: 'Forest Escape',
      description: 'A peaceful retreat in the woods.',
      imageAsset:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROuIGYKr8z0wIVgT_PEbUvtEM_CkWdQQo2zg&s',
      subtitle: 'Nature',
    ),
  ];
}
