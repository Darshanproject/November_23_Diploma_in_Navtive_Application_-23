import 'dart:convert'  as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String? stringresponse;
Map? mapresponse;
Map? dataresponse;
List? listresponse;
class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
      Future<void> fetchdata() async {
        http.Response response;
        response = await http.get(Uri.parse("https://reqres.in/api/users/2"));
        if(response.statusCode == 200){
          stringresponse = response.body;
          mapresponse =         convert.jsonDecode(response.body) as Map<String, dynamic>;

          // mapresponse = json.decode(stringresponse.toString());
          listresponse = mapresponse!['data'] ;
        }else{
          Text("Data Not Found");
        }
      }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchdata();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api for single user"),
      ),
      body: ListView.builder(
        itemCount: mapresponse!.length,
        itemBuilder: (context , int index){
          final item = mapresponse![index]['data'];
        return Card(  
            child: Column(
              children: [
                Text(item['first_name'].toString() + ' ' + item['last_name'].toString())
              ],
            ),
        );
      }),
    );
  }
}