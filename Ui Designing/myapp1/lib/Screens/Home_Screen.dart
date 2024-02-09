import 'package:flutter/material.dart';
import 'package:myapp1/Screens/Secondpage.dart';


class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  Color change =Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const Text("Anjali"),
           const Text("Devang"),
           const Text("Kavya"),
            SizedBox(
              width: 550,
              child: ElevatedButton(onPressed:(){
                setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Second_Page()));
                });
              }, child:const Text("Click")),
            )
          ],
        ),
        appBar: AppBar(
          title: const Text("Hello"),
          backgroundColor:const Color(0xFFEC407A),
        ),
      );
  }
}