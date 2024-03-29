import 'package:myeapp/Const/export.dart';

Widget Back_screen({Widget? child}){
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1411029939/photo/top-view-on-colorful-stacked-books-education-and-learning-concept-background.webp?b=1&s=170667a&w=0&k=20&c=uw6avsgigpECDP-THvvqSLAs2M93HRvIOYCNhnOe70s="),fit: BoxFit.cover)
    ),
    child: child,
  );
}