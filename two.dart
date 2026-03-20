
// Text Widget and its attributes 

// Text widget and style attribute 

// TextStyle


import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
      appBar: AppBar(title:Text('Flutter Application'),backgroundColor:Colors.blueGrey,),
      body: Text('Hello World',style: TextStyle(fontSize: 150,color: Colors.white ),),
      backgroundColor: Colors.black,
     )
    );
  }
}
