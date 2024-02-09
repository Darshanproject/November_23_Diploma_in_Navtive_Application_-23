import 'package:flutter/material.dart';

class Hello_Screen extends StatefulWidget {
  const Hello_Screen({super.key});

  @override
  State<Hello_Screen> createState() => _Hello_ScreenState();
}

class _Hello_ScreenState extends State<Hello_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: Colors.pink[200],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24)
              )
            ),
            child: Container(
              // margin: EdgeInsets.only(top: 120),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    maxRadius: 40,
                    backgroundImage: AssetImage("assets/images/app.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 120),
                    child: Column(
                      children: [
                        Text("Lumine Digital",style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text("Good Software like wine,takes time",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Tasks",style: TextStyle(fontSize: 24,color: Colors.purple),),
                  InkWell(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber
                      ),  
                      child: Center(child: Text("+",style: TextStyle(fontSize: 32,color: Colors.white),)),
                    ),
                  )
                ],
              ),
            ),
            Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Yoga Class"),
                          Text("Bring towel ,Water Bottle")
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
        ],
      ),
      // floatingActionButton: FloatingActionButton(onPressed: (){} ,child: Icon(Icons.add),shape: CircleBorder(),backgroundColor: Colors.purple[100],),
    );
  }
}