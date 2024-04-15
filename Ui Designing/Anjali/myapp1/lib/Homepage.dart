import 'package:flutter/material.dart';

class Home_PAge extends StatefulWidget {
  const Home_PAge({super.key});

  @override
  State<Home_PAge> createState() => _Home_PAgeState();
}

class _Home_PAgeState extends State<Home_PAge> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child:selected==false? AnimatedContainer(
          width: double.maxFinite,
          height:200.0,
          color:  Colors.blue,
          alignment:
              selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: Image.network("https://media.istockphoto.com/id/1456566125/photo/money-stack-usa-dollar-banknotes.webp?b=1&s=170667a&w=0&k=20&c=RvuvbHlu75Yhq_t1XvQLKWSRxm424F6B14bfk6xBqxM="),
        ):GestureDetector(
          onTap: () {
            setState(() {
              selected = false;
            });
          },
          child: AnimatedContainer(
            height: 200,
            
            duration: Duration(seconds: 2),
          child: Column(
            children: [
              Image.network("https://media.istockphoto.com/id/1456566125/photo/money-stack-usa-dollar-banknotes.webp?b=1&s=170667a&w=0&k=20&c=RvuvbHlu75Yhq_t1XvQLKWSRxm424F6B14bfk6xBqxM="),
              Text("This is your first items"),
              Divider(
                thickness: 2,
                color: Colors.black,
              )
            ],
          ),
          ),
        ),
      ),
        )  ],
      
      ),
    );
  }
}