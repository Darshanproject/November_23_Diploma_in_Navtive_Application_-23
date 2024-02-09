import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  const Sample({super.key});

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  //for creating list in any file you have to create it here 
  List title = <String>['Youg Class','Blog Post','Go Swim!','Buy Food'];
  List subtitle = <String>['Bring Towel ,and Water Bottle','Flutter','10 Laps and More','Chocolate and eggs'];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
      // padding: EdgeInsets.symmetric(
      // vertical: 80
      // ),
        child: Column(
          children: [
            Container(
              
               height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24)
          ),
          color: Colors.purple
        ),
              
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Row(
                //this both container are wraped inside a row widget
                children: [
                  //This is your first  container 
                  //this is your circleAvtar container  started here 
                  Container(
                    child: CircleAvatar(
                      maxRadius: 35,
                      // backgroundImage: AssetImage("assets/images/app.png"),
                      // backgroundImage: NetworkImage("https://images.unsplash.com/photo-1541692641319-981cc79ee10a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c3RhY2t8ZW58MHx8MHx8fDA%3D"),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  //your circle avtar container has been ended here 
                  //Form here my second container is starting 
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    ///For writng up and down we took column here 
                    child: Column(
                      children: [
                        Text("Lumie Digital",style: TextStyle(fontSize: 32,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text("good softwares like wine, takes time",style: TextStyle(fontSize: 18,color: Colors.white),)
                      ],
                    ),
                  ),
                  //this container has been ended here 
                ],
              ),
            ),
            //From Here we will create list and some texts here 
            Container(
              padding: EdgeInsets.all(8),
              child: Row(
                //We will provide mainaxisx aligment here 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //this is your first container 
                  Container(
                  
                    child: Text("My Tasks",style: TextStyle(fontSize: 24,color: Colors.purple),),
                    
                  ),
                ///Which has been ended here 
                ///This will be your second container
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple,
                  ),
                  child: Center(
                    child: Icon(Icons.add,size: 42,color: Colors.white,),
                  ),
                )
                ],
              ),
            ),
            ///this container is been completed here with containes mytasks text and one circle container
          Container(
            ///We had cretated a list over here in column 
            ///marks notes that you can only use list.generate in childers directly
            child: Column(
              children: List.generate(title.length, (index) => Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      ///we will use card here 
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///for calling list you can use index
                          Text(title[index],style: TextStyle(
                            fontSize: 22
                          ),),
                          Text("${subtitle[index]}",style: TextStyle(fontSize: 18),)
                        ],
                      ),
                    ),
                    Container(

                      child: Row(
                        children: [Icon(Icons.edit),SizedBox(width: 10,),Icon(Icons.delete)],
                      ),
                    )
                  ],
                ),
              )),
            ),
          )
          ],
        ),
      ),
    );
  }
}