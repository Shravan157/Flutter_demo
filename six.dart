import 'package:flutter/material.dart';

// Ink Well widget
// Ink Well widget will respond to the touch action as performed by the user
// because onpress is only limited for button 
// what if when i click an image and on pressing i want to perform some event or action , or any widget
// There are so many genstures like double tap, long press , tapdown etc.
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar : AppBar(
          title : Text('Flutter App',style :TextStyle(fontWeight: FontWeight(800))),backgroundColor: Colors.blue,
        ),

        body: InkWell(
          child:Container(
          height:200,
          width:200,
          color: Colors.red,
          child: Center(child:InkWell(onDoubleTap: () {
            // On double tap on the Text widget within the Container
            print('Text tapped');
          },child:Text('Click',style: TextStyle(fontWeight: FontWeight(1000)),)))
        ),
        onTap: () {
          // On press or on Tap execute what ever logic needed to be performed
          print('Container Tapped');
        },
        )
      )
    );
  }
}
