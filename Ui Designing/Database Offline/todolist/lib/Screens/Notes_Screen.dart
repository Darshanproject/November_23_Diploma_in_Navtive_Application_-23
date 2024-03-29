import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todolist/Model/Notes_Models.dart';
import 'package:todolist/Screens/Note_Screen.dart';
import 'package:todolist/Services/DatabaseHelper.dart';
import 'package:todolist/Widget/Widegt.dart';

class Notes_Screen extends StatefulWidget {
  const Notes_Screen({super.key});

  @override
  State<Notes_Screen> createState() => _Notes_ScreenState();
}

class _Notes_ScreenState extends State<Notes_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Notes"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Note_Screen()));
      },child: Icon(Icons.add),),
      body: Note != null? FutureBuilder<List<Note>?>(future: DatabaseHelper.getAllNotes(), builder: (context ,AsyncSnapshot<List<Note>?> snapshot){
        if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
        }else if(snapshot.hasError){
          return Center(child: Text(snapshot.error.toString()),);
        }else if(snapshot.hasData){
          if (snapshot.data != null) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context ,int index)=>Note_Widget(note: snapshot.data![index], onTap: () async{
              await Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Note_Screen(note: snapshot.data![index],)));
            },onLongPress: ()async{
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: Text("Are you Sure ?"),
                  actions: [
                    TextButton(onPressed: () async {
                      await DatabaseHelper.deleteNote(snapshot.data![index]);
                      setState(() {
                        
                      });
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data Deleted Successfully")));
                      Navigator.pop(context);
                    }, child: Text("yes")),
                    TextButton(onPressed: (){}, child: Text("No"))
                  ],
                );
              });
            },));
          }
        }
        return Center(child: Text("No data Found",style: TextStyle(color: Colors.white),));
      })
        :Text("No Data Has been added yet")    ,
    );
  }
   
}

