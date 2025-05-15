import 'package:flutter/material.dart';

class Mockupscreentwo extends StatelessWidget {
  const Mockupscreentwo({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> popularMovies = [
      {
        "title": "Birds of Prey",
        "year": "2019",
        "duration": "1h 48m",
        "genre": "Romance, Comedy",
        "image": "assets/BirdsofPrey.jpg",
      },
      {
        "title": "Red Sparrow",
        "year": "2019",
        "duration": "1h 53m",
        "genre": "Car Action, Crime, Drama",
        "image": "assets/Redsparrow.jpg",
      },
    ];

    final List<Map<String, String>> nowPlayingMovies = [
      {
        "title": "To All the Boys: P.S. I Still Love You",
        "year": "2019",
        "duration": "1h 48m",
        "genre": "Romance, Comedy",
        "image": "assets/Boys.jpg",
      },
      {
        "title": "For v Ferrari",
        "year": "2019",
        "duration": "1h 53m",
        "genre": "Car Action, Crime, Drama",
        "image": "assets/Ford.ppg",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Discover & Enjoy Your Favourite Movies"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Jumanji Card
            Card(
              elevation: 4,
              margin: EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.search, size: 40), // Search icon on the left
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jumanji: The Next Level",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Action, Adventure, Comedy, Fantasy"),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/en/d/dc/Jumanji_Welcome_to_the_Jungle.png",
                      width: 80,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            // What's Popular
            Text(
              "What's Popular",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children:
                  popularMovies.map((movie) => _buildMovieCard(movie)).toList(),
            ),

            // Now Playing
            Text(
              "Now Playing",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children:
                  nowPlayingMovies
                      .map((movie) => _buildMovieCard(movie))
                      .toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMovieCard(Map<String, String> movie) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          Image.asset(
            movie["image"]!,
            width: 80,
            height: 100,
            fit: BoxFit.cover,
          ),
          Text(
            movie["title"]!,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text("${movie["year"]} • ${movie["duration"]}"),
          Text(movie["genre"]!),
        ],
      ),
    );
  }
}
