import 'package:flutter/material.dart';

class Mockupscreentwo extends StatelessWidget {
  const Mockupscreentwo({super.key});

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
            const Text('Birds of Prey Action, Crime, Comedy, Drama'),
            const Text('Red Sparrow Mystery, Thriller')
            Title(color: color, child: child)
          ],
        ),
      ),
    );
  }
}
