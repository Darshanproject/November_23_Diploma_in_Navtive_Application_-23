import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myapp/Screens/Home.dart';
class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home_Page())));
  }
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(child: Column(
          children: [
            Lottie.asset("assets/splash2.json"),
            SizedBox(height: 25,),
            Lottie.asset("assets/splash.json"),
          ],
        )),
    );
  }
}