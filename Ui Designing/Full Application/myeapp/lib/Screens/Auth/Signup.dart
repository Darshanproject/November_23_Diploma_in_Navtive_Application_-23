import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myeapp/Const/String.dart';
import 'package:myeapp/Coustom%20Widgets/Back_Screen.dart';
import 'package:myeapp/Coustom%20Widgets/Button.dart';
import 'package:myeapp/Coustom%20Widgets/Text_field.dart';
import 'package:myeapp/Screens/Auth/Login.dart';
import 'package:velocity_x/velocity_x.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _fromkey = GlobalKey<FormState>();
  final namec = TextEditingController();
  final mobilec = TextEditingController();
  final emailc = TextEditingController();
  final passc = TextEditingController();
  final retypec = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Back_screen(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Form(
            key: _fromkey,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: signup.text.color(Colors.red).size(24).make(),
              ),
              Text_Filed(
                controller: namec,
                icons: const Icon(Icons.add),
                namet: name,
                passt: false,
                title: name,
                value: (value){
                    print(value);
                }
              ),
              Text_Filed(
                controller: namec,
                icons: Icon(Icons.add),
                namet: name,
                passt: false,
                title: name,
                value: (value){
                    print(value);
                }
              ),
              Text_Filed(
                controller: namec,
                icons: Icon(Icons.add),
                namet: name,
                passt: false,
                title: name,
                value: (value){
                    print(value);
                }
              ),
              Text_Filed(
                controller: namec,
                icons: Icon(Icons.add),
                namet: name,
                passt: false,
                title: name,
                value: (value){
                    print(value);
                }
              ),
              Text_Filed(
                controller: namec,
                icons: Icon(Icons.add),
                namet: name,
                passt: false,
                title: name,
                value: (value){
                    print(value);
                }
              ),
              TextButton(onPressed: (){
                Get.to(()=>Login());
              }, child: "Already have an accout".text.make()),
              SizedBox(
                width: context.screenWidth - 60,
                child: our_Button(
                  Textb: signup,
                  colorb: Colors.pink
                ),
              )
            ],
          )),
        ),
      ).box.height(context.screenHeight / 1.2).width(context.screenWidth - 60).rounded.clip(Clip.antiAlias).makeCentered()
    );
  }
}