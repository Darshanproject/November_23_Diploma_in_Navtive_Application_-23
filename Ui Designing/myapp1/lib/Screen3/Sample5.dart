import 'package:flutter/material.dart';
import 'package:myapp1/Screen3/Sample1.dart';
import 'package:myapp1/Screen3/Sample2.dart';
import 'package:myapp1/Screens/HelloScreen.dart';

class Bottom_Screen extends StatefulWidget {
  const Bottom_Screen({super.key});

  @override
  State<Bottom_Screen> createState() => _Bottom_ScreenState();
}

class _Bottom_ScreenState extends State<Bottom_Screen> {
  int _selecteditem = 0;
  List Page_Option = <Widget>[
     Font_Size_Chnaging(),
    ColorsChanging(),
    Hello_Screen()
  ];
  void onclick(int index){
    setState(() {
      _selecteditem = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Page_Option[_selecteditem],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selecteditem,
        onTap: onclick,
        backgroundColor: Colors.amber,
        selectedIconTheme: IconThemeData(
          color: Colors.red,
          size: 52
        ),
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: "School"),
        BottomNavigationBarItem(icon: Icon(Icons.phone),label: "Collage")
      ]),
    );
  }
}