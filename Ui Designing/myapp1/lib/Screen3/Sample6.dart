import 'package:flutter/material.dart';
import 'package:myapp1/Screen3/Sample1.dart';
import 'package:myapp1/Screen3/Sample2.dart';
import 'package:myapp1/Screens/HelloScreen.dart';

class Tab_Screen extends StatefulWidget {
  const Tab_Screen({super.key});

  @override
  State<Tab_Screen> createState() => _Tab_ScreenState();
}

class _Tab_ScreenState extends State<Tab_Screen> {
  List Page = <Widget>[
      Font_Size_Chnaging(),
    ColorsChanging(),
    Hello_Screen()
  ];
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: Page.length, 
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar Controller"),
          bottom: TabBar(tabs: [
            Tab(text: "Chats",),
            Tab(text: "Calls",),
            Tab(text: "Updates",)
          ]),
        ),
        body: TabBarView(children: <Widget>[
          Font_Size_Chnaging(),
    ColorsChanging(),
    Hello_Screen()
        ]),
    ));
  }
}