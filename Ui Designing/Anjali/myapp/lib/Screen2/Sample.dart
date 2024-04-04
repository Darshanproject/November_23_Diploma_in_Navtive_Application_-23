import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Sample_Class extends StatefulWidget {
  const Sample_Class({super.key});

  @override
  State<Sample_Class> createState() => _Sample_ClassState();
}

class _Sample_ClassState extends State<Sample_Class> {
  List name = ["https://media.istockphoto.com/id/1444255898/photo/firewood-stack-in-front-of-stove.webp?b=1&s=170667a&w=0&k=20&c=kF9PDSK7eXmuioPxe9L9ozpadEMVolBH2Vf4CVUoNRc=",
  "https://media.istockphoto.com/id/1465739199/photo/horizontal-soil-isolated-for-banner.webp?b=1&s=170667a&w=0&k=20&c=Z6dhktQoVu6rovjrAIFIHsq_41rZHKpzdkvjU4DKpuE="];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [

            //Swiper in flutter
              VxSwiper.builder(itemCount: name.length, 
              aspectRatio: 16/9,
              autoPlay: true,
              autoPlayAnimationDuration: Duration(seconds: 3),
              scrollDirection: Axis.horizontal,

              itemBuilder: (context,int index){
                return Image.network("${name[index]}".toString());
              }).box.color(Colors.red).make(),
              10.heightBox,
              ///Snack Bar
              ElevatedButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  duration: Duration(seconds: 1),
                  backgroundColor: Colors.amber,
                  content: "Button Clicked".text.color(Colors.red).make()));
              }, child: Text("Click me")),
              ///Toast Messeages
              20.heightBox,
              ElevatedButton( onPressed: () => showToast, child: const Text("Show"),),
            
             ] ),
               )
       );   
  }
  
 void showToast() {
    Fluttertoast.showToast(
        msg: "This is a toast message",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}


class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
   List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: list.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}