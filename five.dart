import 'package:flutter/material.dart';


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
        body:Container(
          height:300,
          width:300,
        //   child:Row(
        //   // Define the main axis and cross axis alignment here 
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: <Widget>[
        //     // we can add multiple widgets in the array 
        //     Text('A',style: TextStyle(fontSize: 35),),
        //     Text('B',style: TextStyle(fontSize: 35),),
        //     Text('C',style: TextStyle(fontSize: 35),),
        //     Text('D',style: TextStyle(fontSize: 35),),
        //     OutlinedButton(onPressed: (){
        //       // Function execution on pressed
        //     }, child: Text('Login'))
        //   ],
        // )

        child: Column(
          // Define cross axis and main axis alignment here 
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // define multiple widgets in here 

            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                // more widgets here
                Text('R1',style: TextStyle(fontSize: 35),),
                Text('R2',style: TextStyle(fontSize: 35),),
                Text('R3',style: TextStyle(fontSize: 35),),
                Text('R4',style: TextStyle(fontSize: 35),),
                
              ],
            ),
            Text('A',style: TextStyle(fontSize: 35),),
            Text('B',style: TextStyle(fontSize: 35),),
            Text('C',style: TextStyle(fontSize: 35),),
            Text('D',style: TextStyle(fontSize: 35),),
            OutlinedButton(onPressed: (){}, child: Text('Login'),)
          ],
        ),
        
        )
      )
    );
  }
}
