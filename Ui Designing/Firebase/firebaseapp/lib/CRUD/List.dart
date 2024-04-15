import 'package:firebaseapp/CRUD/add.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,int index){
          return Card(
            child: Text(index.toString()),
          );
        }),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>Add_Students()));
        },child: Icon(Icons.add),),
    );
  }
}