import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var arr =['Shravan','Sumeet','Soham','Akshay','Ayush'];
    var contact = ['7385813010','8805360124','914523668997','8369752102','9523663674'];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Scaffold(
        appBar: AppBar(
          title: Text('App',style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          backgroundColor: Colors.blue,
        ),

        body: ListView.separated(itemBuilder: (context,index){
            return ListTile(
              leading: Text('${index+1}'),
              title:Text(arr[index]) ,
              subtitle: Text(contact[index]),
              trailing: Icon(Icons.person),

            );
        }, separatorBuilder: (context,index){
            return Divider(height: 20,thickness: 1,);
        }, itemCount: arr.length),
      )
    );
  }
}
