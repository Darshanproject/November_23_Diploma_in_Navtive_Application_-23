import 'package:myeapp/Const/export.dart';

Widget our_Button ({String? Textb,Color? colorb,onPress}){
  return ElevatedButton(onPressed: onPress, child: Textb!.text.size(24).color(Colors.white).make(),style: ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(colorb)
  ),);
}