// ignore: file_names
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



String? stringResponse;
Map? mapResponse;
Map? dataresponse;
List? listresponse;
class MyListShowing extends StatefulWidget {
  const MyListShowing({super.key});

  @override
  State<MyListShowing> createState() => _MyListShowingState();
}

class _MyListShowingState extends State<MyListShowing> {

  Future <void> listapi()async{
    http.Response response;
    response = await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
    if(response.statusCode == 200){
      stringResponse = response.body;
      mapResponse = json.decode(stringResponse.toString());
      listresponse = mapResponse!['data'];
    }
  }
  @override
  void initState() {
    super.initState();
    listapi();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("My List"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        child: ListView.builder(
          itemCount: listresponse!.length,
          itemBuilder:(context, index){
            final item = listresponse![index];
            return Column(
              children: [
                ListTile(
                  title: Text(item['first_name'] + ' ' + item['last_name'].toString()),
                  subtitle: Text(item['email'].toString()),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(item['avatar']),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Divider(
                    thickness: 2,
                    color: Colors.black,
                  ),
                )
              ],
            );
          } ),
      ),
    );
  }
}