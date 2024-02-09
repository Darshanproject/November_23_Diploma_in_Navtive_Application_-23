import 'package:flutter/material.dart';

class Second_Page extends StatefulWidget {
  const Second_Page({super.key});

  @override
  State<Second_Page> createState() => _Second_PageState();
}

class _Second_PageState extends State<Second_Page> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          Row(
            children: [
                Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                 color: Colors.amber,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  bottomLeft: Radius.circular(24)
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black12,
                    offset: Offset(5, 10),
                    spreadRadius: 2,
                    blurStyle: BlurStyle.inner
                  )
                ]
              ),
             
              // margin: EdgeInsets.only(bottom: 10),
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Center(child: Text("Anpanman")),
            ),
              Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                 color: Colors.amber,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  bottomLeft: Radius.circular(24)
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black12,
                    offset: Offset(5, 10),
                    spreadRadius: 2,
                    blurStyle: BlurStyle.inner
                  )
                ]
              ),
             
              // margin: EdgeInsets.only(bottom: 10),
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Center(child: Text("Anpanman")),
            ),
            ],
          ),
              Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                 color: Colors.amber,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  bottomLeft: Radius.circular(24)
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black12,
                    offset: Offset(5, 10),
                    spreadRadius: 2,
                    blurStyle: BlurStyle.inner
                  )
                ]
              ),
             
              // margin: EdgeInsets.only(bottom: 10),
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Center(child: Text("Anpanman")),
            ),
              Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                 color: Colors.amber,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  bottomLeft: Radius.circular(24)
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black12,
                    offset: Offset(5, 10),
                    spreadRadius: 2,
                    blurStyle: BlurStyle.inner
                  )
                ]
              ),
             
              // margin: EdgeInsets.only(bottom: 10),
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Center(child: Text("Anpanman")),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
    );
  }
}