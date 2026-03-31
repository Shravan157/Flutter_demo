import 'package:flutter/material.dart';

/*
 Expanded widget allows the container to take the available space 
 we need to wrap the container with the widget Expanded and it will take the space 

 Now if we want to allot the space the widgets in a fixed proportion then we make 
 the use of flex 

 eg: Consider total space available is 10, we want to fit 4 widgets in following 
     proportion 
     widget1 -> 2 space
     widget2 -> 3 space
     widget3 -> 4 space
     widget4 -> 1 space

  we get this widget avialable in Expanded widget


  when we apply it on rows it affects the width of the container because of the 
  main axis alignment is width or horizontal 

  when we apply it on columns it affects the height of the container because of 
  the main axis alignment is height or vertical 
*/

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
        // body: Row(
        //   children: [
        //     Expanded(
        //       flex: 2,
        //       child: Container(width: 50, height: 100, color: Colors.blue),
        //     ),
        //     Expanded(
        //       flex: 4,
        //       child: Container(
        //         width: 50,
        //         height: 100,
        //         color: const Color.fromARGB(255, 66, 233, 100),
        //       ),
        //     ),
        //     Expanded(
        //       flex: 3,
        //       child: Container(
        //         width: 50,
        //         height: 100,
        //         color: const Color.fromARGB(255, 177, 213, 119),
        //       ),
        //     ),

        //     Expanded(
        //       flex:1,
        //       child: Container(
        //         width: 50,
        //         height: 100,
        //         color: const Color.fromARGB(255, 205, 184, 135),
        //       ),
        //     ),
        //   ],
        // ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(height: 100, color: Colors.blue,),
              
            ),
            Expanded(
              flex: 4,
              child: Container(
                height: 100,
                color: const Color.fromARGB(255, 66, 233, 100),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 100,
                color: const Color.fromARGB(255, 177, 213, 119),
              ),
            ),

            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                color: const Color.fromARGB(255, 205, 184, 135),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
