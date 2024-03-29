import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myeapp/Const/export.dart';
import 'package:myeapp/Screens/Auth/Login.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();  
    Timer(Duration(seconds: 3), () { 
      Get.offAll(()=>Login());
    });
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.pink[100],
      body: Center(
        child: Container(
          height: 50,
          width: 100,
          child: Image.network("https://plus.unsplash.com/premium_photo-1689247946001-34d1588297f4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8c3RhY2t8ZW58MHx8MHx8fDA%3D",fit: BoxFit.cover,)
          ),
      ),
    );
  }
}