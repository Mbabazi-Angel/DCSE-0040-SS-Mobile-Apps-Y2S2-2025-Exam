import 'package:flutter/material.dart';

class MockupScreenOne extends StatelessWidget {
  const MockupScreenOne({super.key, required String title});

  @override
  Widget build(BuildContext context) {
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
            const Text(
              'To all the Boys: PS I Still Love You(2019) 2019 1h 48m Romance, Comedy Lara Jean and Peter have just taken their romance from a lo..',
            ),
            const Text(
              'Baby Driver 2019. 1h 53m, Car Action, Crime, Drama After being coerced into working for a crime boss, a yo...',
            ),
            const Text(
              'John Wick 2019. 2h 10m Action, Crime, Thriller John Wick is on the run after kiling a memeber of the intern...',
            ),
            const Text('Exit 2019. 2h 10m Action, Comedy'),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Home"),
            const Text("Movie"),
            const Text("Bookmark"),
            const Text("Account"),
          ],
        ),
      ),
    );
  }
}
