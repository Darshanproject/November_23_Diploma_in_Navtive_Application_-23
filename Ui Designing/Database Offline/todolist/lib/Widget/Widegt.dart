import 'package:flutter/material.dart';
import 'package:todolist/Model/Notes_Models.dart';


class Note_Widget extends StatelessWidget {
  final Note note;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  const Note_Widget({super.key,required this.onTap,required this.onLongPress,required this.note});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onLongPress: onLongPress,
      onTap:  onTap,
      child: Card(
        child: Column(
          children: [
            Text(note.title.toString(),style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
            ),
            Divider(
              thickness: 5,
              color: Colors.black,
            ),
            Text(note.description.toString(),style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}