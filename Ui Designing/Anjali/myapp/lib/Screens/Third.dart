import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Lottie.asset("assets/third.json"),
      ),
    );
  }
}