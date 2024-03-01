import 'package:flutter/material.dart';

class Font_Size_Chnaging extends StatefulWidget {
  const Font_Size_Chnaging({super.key});

  @override
  State<Font_Size_Chnaging> createState() => _Font_Size_ChnagingState();
}

class _Font_Size_ChnagingState extends State<Font_Size_Chnaging> {
  double size = 18;
  void incr(){
    setState(() {
      size +=2;
    });
  }
  void dec(){
    setState(() {
      size -=2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.maxFinite,
            child: Center(
              child: Text("Hello",style: TextStyle(
                fontSize: size,fontWeight: FontWeight.bold,
              ),),
            ),
          ),
          ElevatedButton(onPressed: (){
            incr();
          }, child: Text("Add +")),
          ElevatedButton(onPressed: (){
            dec();
          }, child: Text("Dec -"))
        ],
      ),
    );
  }
}