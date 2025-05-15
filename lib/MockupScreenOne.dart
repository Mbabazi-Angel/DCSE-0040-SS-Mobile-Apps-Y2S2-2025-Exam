import 'package:flutter/material.dart';

class Mockupscreenone extends StatelessWidget {
  final List<Map<String, String>> movies = [
    {
      "title": "To All the Boys: P.S. I Still Love You",
      "year": "2019",
      "duration": "1h 48m",
      "genre": "Romance, Comedy",
      "image": "assets/Boys.jpg",
    },
    {
      "title": "Baby Driver",
      "year": "2019",
      "duration": "1h 53m",
      "genre": "Car Action, Crime, Drama",
      "image": "assets/BabyDriver.jpg",
    },
    {
      "title": "John Wick",
      "year": "2019",
      "duration": "2h 10m",
      "genre": "Action, Crime, Thriller",
      "image": "assets/JohnWick.jpg",
    },
    {
      "title": "Exit",
      "year": "2019",
      "duration": "2h 10m",
      "genre": "Action, Comedy",
      "image": "assets/exit.jpg",
    },
  ];

  Mockupscreenone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Discover & Enjoy Your Favourite Movies"),
        centerTitle: true,
      ),

      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Movies...",
                prefixIcon: Icon(Icons.search, color: Colors.white),
                filled: true,
                fillColor: Colors.white.withOpacity(0.2),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                hintStyle: TextStyle(color: Colors.white70),
              ),
            ),
          ),

          // Categories
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CategoryButton(label: "Popular"),
                CategoryButton(label: "Upcoming"),
                CategoryButton(label: "Now Playing"),
              ],
            ),
          ),

          // Movie List
          Expanded(
            child: ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return MovieCard(movie: movies[index]);
              },
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Movies"),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "Bookmark",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Account",
          ),
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String label;

  const CategoryButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print("$label Clicked"),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(label, style: TextStyle(color: Colors.white, fontSize: 16)),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final Map<String, String> movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Image.asset(
          movie["image"]!,
          fit: BoxFit.cover,
          width: 60,
          height: 80,
        ),
        title: Text(
          movie["title"]!,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          "${movie["year"]!} | ${movie["duration"]!} | ${movie["genre"]!}",
          style: TextStyle(color: Colors.black),
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
      ),
    );
  }
}
