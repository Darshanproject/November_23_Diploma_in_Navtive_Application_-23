import 'package:flutter/material.dart';
import 'package:myapp1/Screens/Sample.dart';

class Anpanman extends StatefulWidget {
  const Anpanman({super.key});

  @override
  State<Anpanman> createState() => _AnpanmanState();
}

class _AnpanmanState extends State<Anpanman> {
  List Name = [1,2,3,4,5,6,7,8,9,10];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:ListView.builder(
        itemCount: Name.length,
        itemBuilder: ( context,int index){
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Sample()));
          },
          child: ListTile(
            title: Text("Items ${Name[index]}"),
            leading: CircleAvatar(
              child: Text("${Name[index]}",style: TextStyle(fontSize: 24),),
            ),
          ),
        );
      }) ,
    );
  }
}