import 'package:flutter/material.dart';
import 'package:mytodo/Screen/Notes.dart';

class Note_Screen extends StatefulWidget {
  const Note_Screen({super.key});

  @override
  State<Note_Screen> createState() => _Note_ScreenState();
}

class _Note_ScreenState extends State<Note_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Note"),
        centerTitle: true,
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Notes_Screen()));
      },child: Icon(Icons.add),),
    );
  }
}