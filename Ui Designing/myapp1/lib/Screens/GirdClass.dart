import 'package:flutter/material.dart';
import 'package:myapp1/Screens/Sample.dart';

class MyGird_Class extends StatefulWidget {
  const MyGird_Class({super.key});

  @override
  State<MyGird_Class> createState() => _MyGird_ClassState();
}

class _MyGird_ClassState extends State<MyGird_Class> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
  children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Sample()));
                },
                child: Container(
                      color: Colors.pink[100],
                    ),
              ),
    Container(
      color: Colors.pink[200],
    ),
    Container(
      color: Colors.pink[300],
    ),
    Container(
      color: Colors.pink[400],
    ),
    Container(
      color: Colors.pink[100],
    ),
    Container(
      color: Colors.pink[200],
    ),
    Container(
      color: Colors.pink[300],
    ),
    Container(
      color: Colors.pink[400],
    ),
    Container(
      color: Colors.pink[100],
    ),
    Container(
      color: Colors.pink[200],
    ),
          ],
      ),
    );
  }
}