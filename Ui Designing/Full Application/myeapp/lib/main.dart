import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myeapp/Screens/Auth/Login.dart';
import 'package:myeapp/Screens/Splash%20Screen/Splash_Screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_screen(),
    );
  }
}