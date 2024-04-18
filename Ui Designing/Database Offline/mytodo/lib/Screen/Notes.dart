import 'package:flutter/material.dart';

class Notes_Screen extends StatefulWidget {
  const Notes_Screen({super.key});

  @override
  State<Notes_Screen> createState() => _Notes_ScreenState();
}

class _Notes_ScreenState extends State<Notes_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                hintText: "title"
              ),
              maxLines: 1,
              maxLength: 50,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                hintText: "Description"
              ),
              maxLines: 5,
              maxLength: 500,
            ),
            TextFormField(
              validator: (value) {
                if (value != null && value.contains('@')) {
                  
                }
              },
            )
          ],
        ),
      ),
    );
  }
}