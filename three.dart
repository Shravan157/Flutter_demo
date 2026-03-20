import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(title: Text('Flutter Application'),),
        // Button1 -> Text Button 

        // body: TextButton(onPressed: (){
        //   print('Text Button is clicked');
        // }, child: Text('click here'))


        // Button2 -> Elevated Button

        // body: ElevatedButton(onPressed: (){
        //   print('Elevated Button clicked');
        // }, child: Text('click here'))


        // Button3 -> outline button 

        body : Center(child:OutlinedButton(onPressed: (){
          print('Outline button is clicked');
        }, child: Text('click here')))
      )
    );
  }
}
