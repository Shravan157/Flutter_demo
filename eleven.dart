import 'package:flutter/material.dart';

/* margin and padding */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Scaffold(
      // body: Padding(
      //   padding: EdgeInsetsGeometry.only(top:20,left: 34),
      //   child: Text(
      //   'Hello World',
      //   style: TextStyle(
      //     fontSize: 20
      //   ),
      // ),
      // )
      
      body: Container(
        color:Colors.red,
        margin: EdgeInsets.all(11),
        child: Padding(
          padding:EdgeInsetsGeometry.only(top:20),
          child: Text('Hello World',style: TextStyle(fontSize: 25,color: Colors.blueAccent),),
        ),
      )
    ));
  }
}
