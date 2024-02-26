import 'package:flutter/material.dart';
import 'package:myapp1/Screen2/Task1.dart';
import 'package:myapp1/Screen2/Wave.dart';
import 'package:myapp1/Screens/GirdClass.dart';
import 'package:myapp1/Screens/Gird_Class.dart';
import 'package:myapp1/Screens/Grid.dart';
import 'package:myapp1/Screens/List.dart';
import 'package:myapp1/Screens/List1.dart';
import 'package:myapp1/Screens/List_View_Builder.dart';

import 'package:myapp1/Screens/Sample.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: Wave()
    );
  }
}
