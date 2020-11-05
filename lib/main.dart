import 'package:flutter/material.dart';
import 'second.dart';

main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transition Demo',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza Order'),
      ),
      body: GestureDetector(
        child: Hero(
          tag: 'imageHero',
          child: Image(
            image: AssetImage('Images/pizza.png'),
            width: 120.0,
            height: 120.0,
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) {
              return Second();
            }),
          );
        },
      ),
    );
  }
}
