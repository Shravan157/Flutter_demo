
import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    var arrNames = ['Shravan','Akshay','Ayush','Arjun'];
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(title:Text('Application',style: TextStyle(fontWeight: FontWeight(40)),),backgroundColor: Colors.blue,),

        // List view in flutter 

        // body:ListView(
        //   scrollDirection: Axis.horizontal,
        //   reverse: true,
        //   children: [
        //     Padding(padding: EdgeInsetsGeometry.all(5),child: Text('widget1',style:TextStyle(fontSize: 25,fontWeight: FontWeight(40))),),
        //     Padding(padding: EdgeInsetsGeometry.all(5),child: Text('widget2',style:TextStyle(fontSize: 25,fontWeight: FontWeight(40))),),
        //     Padding(padding: EdgeInsetsGeometry.all(5),child: Text('widget3',style:TextStyle(fontSize: 25,fontWeight: FontWeight(40))),),
        //     Padding(padding: EdgeInsetsGeometry.all(5),child: Text('widget4',style:TextStyle(fontSize: 25,fontWeight: FontWeight(40))),),
        //   ],
        // )


        // Listview.builder in flutter allows dynamic data to be used in the widgets in flutter application 
        // Scroll Behavior is built in in ListView.builder
        // if we have to seperate multiple widgets in the list we can make user of listSeperator instead of list view 

        // body:ListView.builder(itemBuilder: (context, index) {
          
        //   // return the type of widget we want to return 
        //   return Text(
        //     arrNames[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight(80)),
        //   );
        // },
        // itemCount: arrNames.length,
        // scrollDirection: Axis.horizontal,
        // itemExtent: 100,
        // )

        body: ListView.separated(itemBuilder: (context, index) {
          // return multiple widgets here as per need 
          return Text(arrNames[index],style: TextStyle(fontSize: 40,fontWeight: FontWeight(80)),);
        }, separatorBuilder:(context,index){
          return Divider(height: 4,thickness: 2,);
        } , itemCount: arrNames.length,scrollDirection: Axis.vertical,)

      )
    );
  }
}
