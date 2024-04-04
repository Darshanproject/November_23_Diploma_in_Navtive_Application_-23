import 'package:api/Screens/Fetchdata.dart';
import 'package:api/Screens/Home.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyListShowing(),
    );
  }
}