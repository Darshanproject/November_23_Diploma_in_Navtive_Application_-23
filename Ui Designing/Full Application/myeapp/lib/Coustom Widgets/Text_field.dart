import 'package:myeapp/Const/export.dart';

Widget Text_Filed({String? title,passt,value,String? namet,Icon? icons,controller}){
  return Column(  
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.size(24).fontWeight(FontWeight.bold).color(Colors.red).make(),
      TextFormField(
        obscureText: passt,
        validator: value,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: namet,
          suffixIcon: icons
        ),
      ),
      10.heightBox, 
    ],
  );
}