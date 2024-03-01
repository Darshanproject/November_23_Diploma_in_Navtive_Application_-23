import 'dart:math';

import 'package:flutter/material.dart';

class ColorsChanging extends StatefulWidget {
  const ColorsChanging({super.key});

  @override
  State<ColorsChanging> createState() => _ColorsChangingState();
}

class _ColorsChangingState extends State<ColorsChanging> {
  late  Color colors = Colors.amber;
  Random _random = Random();
  void changecolor(){
    setState(() {
      colors = Color.fromARGB(
        _random.nextInt(255), _random.nextInt(255), _random.nextInt(255),
         255);
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: InkWell(
        onTap: changecolor,
        child: Container(
          color: colors,
        ),
      ),
    );
  }
}