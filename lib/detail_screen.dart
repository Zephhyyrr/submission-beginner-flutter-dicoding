import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'story_list.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  final Story story;

  const DetailScreen({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF438BFF),
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                story.imageAsset.isNotEmpty
                    ? Container(
                        margin: const EdgeInsets.only(
                            top: 25.0), // Memberikan jarak ke bawah status bar
                        child: Image.network(
                          story.imageAsset, // Menggunakan URL gambar
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 250.0,
                        ),
                      )
                    : const SizedBox.shrink(),

                // SafeArea memastikan konten tidak menutupi area status bar
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                story.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(Icons.movie),
                      const SizedBox(height: 8.0),
                      Text(
                        story.subtitle,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                story.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: story.imageUrls != null && story.imageUrls!.isNotEmpty
                  ? ListView(
                      scrollDirection: Axis.horizontal,
                      children: story.imageUrls!.map((url) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(url),
                          ),
                        );
                      }).toList(),
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
      // Menambahkan FloatingActionButton untuk favorite
      floatingActionButton: const FavoriteButton(),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blue, // Warna latar belakang FAB
      child: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.white, // Warna ikon FAB
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite; // Toggle status favorite
        });
      },
    );
  }
}
