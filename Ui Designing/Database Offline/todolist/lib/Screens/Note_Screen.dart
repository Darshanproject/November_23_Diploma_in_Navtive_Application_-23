import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todolist/Model/Notes_Models.dart';
import 'package:todolist/Services/DatabaseHelper.dart';

class Note_Screen extends StatelessWidget {
  final Note? note;
   Note_Screen({super.key,this.note});
  
  final _fromkey = GlobalKey<FormState>();

  final titlecontroller = TextEditingController();

  final descriptioncontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (note != null) {
        titlecontroller.text = note!.title!;
        descriptioncontroller.text = note!.description!;
    }
    return  Scaffold(
      resizeToAvoidBottomInset: true,
      // backgroundColor: Colors.,
      appBar: AppBar(
        title: Text(note != null?"Update Note": "Add Notes"),
        centerTitle: true,
      ),
      body: Form(
        key: _fromkey,
        child: Padding(
           padding: const EdgeInsets.all(8.0),
          child: Column(
          children: [
            TextFormField(
              controller: titlecontroller,
                            validator: (value) {
                if (value != null && value.isEmpty) {
                    return 'Please enter your description here';
                }else{
                  return null;
                }
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                hintText:"Enter your title", 
              ),
              maxLength: 50,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: descriptioncontroller,
              validator: (value) {
                if (value != null && value.isEmpty) {
                    return 'Please enter your description here';
                }else{
                  return null;
                }
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                hintText:"Enter your DISCRIPTION", 
              ),
              maxLines: 8,
              maxLength: 500,
            ),
            Spacer(),
            SizedBox(
              height: 35,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(onPressed: ()async{
                final title =titlecontroller.value.text;
                final description =descriptioncontroller.value.text;
                if(title.isEmpty || description.isEmpty){
                  return null;
                }
                final Note model = Note(id: note?.id, title: title, description: description);
                if(note == null){
                  await DatabaseHelper.addNote(model);
                  SnackBar(content: Text("DATA ADDED"),backgroundColor: Colors.amber,duration: Duration(milliseconds: 12),);
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Note_Screen()));
                }else{
                  await DatabaseHelper.updateNote(model);
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Note_Screen()));
                }
                Navigator.pop(context);
                
              },style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.blue,
                      width: 2
                    ),
                    borderRadius: BorderRadius.circular(12)
                  )
                )
              ), child: Text(note == null ? 'Save' : 'Edit',style: TextStyle(fontSize: 22),),
            ),
            )
          ],
                ),
        )),
    );
  }
}