import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 50
        ),
        color: Colors.orange,
        child: Column(
          children: [
            Text("ROW / COL",style: TextStyle(
              fontSize: 24,fontWeight: FontWeight.bold
            ),),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            //this is your first part 
            Container(
                padding: EdgeInsets.all(12),
              color: Colors.orange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                    Container(
                      width: 190,
                     
                      child: Column(
                        children: [
                          Text("Layout"),
                          Container(
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                              children: [
                                Icon(Icons.arrow_circle_left_outlined,size: 52,color: Colors.black,),
                                Text("Row"),
                                Icon(Icons.arrow_circle_left_outlined,size: 52,color: Colors.black,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    
                    Container(
                      width: 190,
                      child: Column(
                        children: [
                          Text("Layout"),
                          Container(
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                              children: [
                                Icon(Icons.arrow_circle_left_outlined,size: 52,color: Colors.black,),
                                Text("Row"),
                                Icon(Icons.arrow_circle_left_outlined,size: 52,color: Colors.black,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    //this is your ending        
                    //this is starting of your container second
                                    //this is ending
                ],
              ),
            ),
            //this is your ending continer
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
                padding: EdgeInsets.all(12),
              color: Colors.orange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                    Container(
                      width: 190,
                     
                      child: Column(
                        children: [
                          Text("Layout"),
                          Container(
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                              children: [
                                Icon(Icons.arrow_circle_left_outlined,size: 52,color: Colors.black,),
                                Text("Row"),
                                Icon(Icons.arrow_circle_left_outlined,size: 52,color: Colors.black,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    
                    Container(
                      width: 190,
                      child: Column(
                        children: [
                          Text("Layout"),
                          Container(
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                              children: [
                                Icon(Icons.arrow_circle_left_outlined,size: 52,color: Colors.black,),
                                Text("Row"),
                                Icon(Icons.arrow_circle_left_outlined,size: 52,color: Colors.black,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),    
              
          ],
        ),
      ),
      Divider(
                thickness: 1,
                color: Colors.black,
              )
              
      ])));
  }
}