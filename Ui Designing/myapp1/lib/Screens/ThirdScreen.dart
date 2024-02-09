import 'package:flutter/material.dart';

class Third_Screen extends StatefulWidget {
  const Third_Screen({super.key});

  @override
  State<Third_Screen> createState() => _Third_ScreenState();
}

class _Third_ScreenState extends State<Third_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
                Padding(
              padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                hintText: "Name",
                labelText: "Name"
              ),
            ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Image.network("https://plus.unsplash.com/premium_photo-1684534125372-10d4c47c825f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8c3RhY2t8ZW58MHx8MHx8fDA%3D"),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Image.asset("assets/images/app.png"),
            ),
        
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Images"),
        backgroundColor: Colors.purple[100],
      ),
    );
  }
}