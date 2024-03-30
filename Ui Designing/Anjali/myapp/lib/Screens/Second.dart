import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Lottie.asset("assets/second.json"),
      ),
    );
  }
}