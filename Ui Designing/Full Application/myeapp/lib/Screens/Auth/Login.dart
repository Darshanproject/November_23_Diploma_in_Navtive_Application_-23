import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myeapp/Const/String.dart';
import 'package:myeapp/Coustom%20Widgets/Back_Screen.dart';
import 'package:myeapp/Coustom%20Widgets/Button.dart';
import 'package:myeapp/Coustom%20Widgets/Text_field.dart';
import 'package:myeapp/Screens/Auth/Signup.dart';
import 'package:myeapp/Screens/Home/Home.dart';
import 'package:velocity_x/velocity_x.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _fromkey = GlobalKey<FormState>();
  final namec = TextEditingController();
  final passc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Back_screen(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Form(
              key: _fromkey,
              child: Column(
                children: [
                  login.text.size(24).color(Colors.red).fontWeight(FontWeight.bold).make(),
                      Text_Filed(
                        controller: namec,
                        icons: Icon(Icons.add),
                        namet: namehint,
                        passt: false,
                        title: name,
                        value: (value){
                            if(value !=null && value.isBlank){
                              return 'Enter your name proper';
                            }else{
                              return null;
                            }
                        }
                      ),
                      Text_Filed(
                        controller: namec,
                        icons: Icon(Icons.add),
                        namet: namehint,
                        passt: false,
                        title: name,
                        value: (value){
                            if(value !=null && value.isBlank){
                              return 'Enter your name proper';
                            }else{
                              return null;
                            }
                        }
                      ),
                      TextButton(onPressed: (){}, child: Text("Fogot Password?",style: TextStyle(color: Colors.blue),)),
                      20.heightBox,
                    SizedBox(
                      width: context.screenWidth - 60,
                      child: our_Button(
                        Textb: login,
                        colorb: Colors.red,
                        onPress: ()=>Get.to(()=>Home())
                      ),
                    ),
                    10.heightBox,
                    TextButton(onPressed: (){
                      Get.to(()=>Signup());
                    }, child: signup.text.color(Colors.blue).make())
                ],
              ),
            ),
          ),
        ),
      ).box.height(context.screenHeight/1.9).width(context.screenWidth - 60).rounded.clip(Clip.antiAlias).makeCentered()
    );
  }
}