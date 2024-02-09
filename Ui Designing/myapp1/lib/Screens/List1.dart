import 'package:flutter/material.dart';

class ListBuilder_Screen extends StatefulWidget {
  const ListBuilder_Screen({super.key});

  @override
  State<ListBuilder_Screen> createState() => _ListBuilder_ScreenState();
}

class _ListBuilder_ScreenState extends State<ListBuilder_Screen> {
  List name = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: name.length,
          itemBuilder: (context,int index){
          return ListTile(
            title: Text("items ${name[index].toString()}"),
            leading: Text(name[index].toString()),
          );
        }),
      ),
    );
  }
}