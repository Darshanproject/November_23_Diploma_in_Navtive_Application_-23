import 'package:flutter/material.dart';
import 'package:myapp1/Screen3/Sample1.dart';
import 'package:myapp1/Screen3/Sample2.dart';
import 'package:myapp1/Screens/HelloScreen.dart';


class Drawer_Screen extends StatefulWidget {
  const Drawer_Screen({super.key});

  @override
  State<Drawer_Screen> createState() => _Drawer_ScreenState();
}

class _Drawer_ScreenState extends State<Drawer_Screen> {
  List pageoption = <Widget>[
    Font_Size_Chnaging(),
    ColorsChanging(),
    Hello_Screen()    
  ];
  int selectedindex = 0;
  void onchange(int index){
    setState(() { 
        selectedindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: pageoption[selectedindex],
    drawer: Drawer(
      
      child: ListView(
        children: [
          Container(
            height: 250,
            color: Colors.blue,
          ),
          ListTile(
            selected: selectedindex == 0,
            onTap: () {
              onchange(0);
            },
            leading: IconButton(onPressed: (){}, icon: Icon(Icons.home)),
            title: Text("Home"),
          ),
          Divider(
            thickness: 1,
            color: Colors.black,
          ),
          ListTile(
            selected: selectedindex == 1,
            leading: IconButton(onPressed: (){}, icon: Icon(Icons.home)),
            title: Text("Home"),
            onTap: () {
              onchange(1);
            },
          ),
           Divider(
            thickness: 1,
            color: Colors.black,
          ),
          ListTile(
            selected: selectedindex == 2,
            leading: IconButton(onPressed: (){}, icon: Icon(Icons.home)),
            title: Text("Home"),
            onTap: () {
              onchange(2);
            },
          ),
           Divider(
            thickness: 1,
            color: Colors.black,
          ),
          ListTile(
            selected: selectedindex == 0,
            leading: IconButton(onPressed: (){}, icon: Icon(Icons.home)),
            title: Text("Home"),
            onTap: () {
              onchange(0);
            },
          ),
           Divider(
            thickness: 1,
            color: Colors.black,
          ),
        ],
      ),
    ),
    );
  }
}