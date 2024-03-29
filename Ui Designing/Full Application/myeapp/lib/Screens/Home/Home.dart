import 'package:flutter/material.dart';
import 'package:myeapp/Const/export.dart';
import 'package:myeapp/Coustom%20Widgets/Text_field.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Const/List.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  final searchc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text_Filed(
                  controller: searchc,
                  icons: Icon(Icons.search),
                  namet: "What's oin your mind",
                  passt: false,
                  title: "",
                  value: (value){
                    print(value);
                  }
                ),
              ), ///end of search bar
              Container(
                child: VxSwiper.builder(
                  autoPlay: true,
                  aspectRatio: 2.2,
                  autoPlayAnimationDuration: Duration(seconds: 3),
                  itemCount: 5, itemBuilder: (context,int index){
                  return Container(
                    width: context.screenWidth - 40,
                    height: 200,
                    // color: color[index],
                    child: Image.network(color[index]),
                  );
                }),//Swiper has been completed here 
              ),/// this is swipers container
              10.heightBox,
              //list for cross axixs
              Row(
                children: List.generate(2, (index) => Card(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Index"),
                    ),
                  ),
                ))
              ),
              Row(
                children: List.generate(2, (index) => Card(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Index"),
                    ),
                  ),
                ))
              ),
             
            ],
          ),
        ),
      ),

    );
  }
}