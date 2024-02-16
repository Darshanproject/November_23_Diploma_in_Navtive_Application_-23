import 'package:flutter/material.dart';

class Detailes extends StatelessWidget {
  String images;
  String para;
   Detailes({super.key,required this.images,required this.para});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Image.network("$images"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(para),
              ),
            )
          ],
        ),
      ),
    );
  }
}