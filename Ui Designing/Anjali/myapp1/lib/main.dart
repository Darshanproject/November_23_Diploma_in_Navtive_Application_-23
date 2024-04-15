import 'package:flutter/material.dart';
import 'package:myapp1/Homepage.dart';

const List<String> list = ["None","How are you ?","What are you doing ?","Why you are upset ?","Take a good care of yourself"];
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Home_PAge(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  String dropdownvalue = list.first;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("My Dropdown menu"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            DropdownMenu<String>(
              width: double.maxFinite,
              initialSelection: list.first,
              onSelected: (value) {
              setState(() {
                  dropdownvalue = value!;
              });
              },
              dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value){
                  return DropdownMenuEntry(value: value, label: value);
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
