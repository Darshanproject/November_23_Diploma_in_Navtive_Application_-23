import 'dart:io';

void main(){
  var num1,num2,ans;
  print("Enter your number 1 : ");
  num1 = int.parse(stdin.readLineSync()!);
  print("Enter your number 2 : ");
  num2 = int.parse(stdin.readLineSync()!);
  ans=num1+num2;
  print("$num1 + $num2 = $ans");
}

