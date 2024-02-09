import 'package:flutter/material.dart';

class Grid_Screen extends StatefulWidget {
  const Grid_Screen({super.key});

  @override
  State<Grid_Screen> createState() => _Grid_ScreenState();
}

class _Grid_ScreenState extends State<Grid_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,mainAxisSpacing: 10,crossAxisSpacing: 10),
        children: [
          Container(
            color: Colors.amber,
            // height: 250,
            child: Center(child: Text("1")),
          ),
           Container(
            color: Colors.amber,
            height: 250,
            child: Center(child: Text("1")),
          ),
           Container(
            color: Colors.amber,
            height: 250,
            child: Center(child: Text("1")),
          ),
           Container(
            color: Colors.amber,
            height: 250,
            child: Center(child: Text("1")),
          ),
           Container(
            color: Colors.amber,
            height: 250,
            child: Center(child: Text("1")),
          ),
           Container(
            color: Colors.amber,
            height: 250,
            child: Center(child: Text("1")),
          ),
           Container(
            color: Colors.amber,
            height: 250,
            child: Center(child: Text("1")),
          ),
           Container(
            color: Colors.amber,
            height: 250,
            child: Center(child: Text("1")),
          ),
           Container(
            color: Colors.amber,
            height: 250,
            child: Center(child: Text("1")),
          )
        ],
        ),
      ),
    );
  }
}