import 'package:flutter/material.dart';

// Card Widget in Flutter
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Application',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'GoogleSansCode',
              fontStyle: FontStyle.italic,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Card(
          // attributes of card
          elevation: 6, // more shadow effect 
          shadowColor: Colors.blue,
          child: Padding(
            padding: EdgeInsetsGeometry.all(15),
            child: Text('Hello World', style: TextStyle(fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
