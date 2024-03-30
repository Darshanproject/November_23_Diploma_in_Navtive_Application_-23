import 'package:flutter/material.dart';
import 'package:myapp/Screens/First.dart';
import 'package:myapp/Screens/Second.dart';
import 'package:myapp/Screens/Third.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int _slectedindex = 0;
  // List name = [Text("Home page"),Text("Second Page"),Text("Third Page")];
  List name =[
    First(),
    Second(),
    Third()
  ];
  void onclick(int index){
    setState(() {
      _slectedindex = index;
    });
  }
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: name.elementAt(_slectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        unselectedFontSize: 18,
        selectedFontSize: 22,
        selectedIconTheme: IconThemeData(color: Colors.pink,size: 30),
        unselectedIconTheme: IconThemeData(color: Colors.white,size: 15),
        currentIndex: _slectedindex,
        onTap: onclick,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings")
      ]),
    );
  }
}