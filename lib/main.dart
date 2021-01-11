import 'package:flutter/material.dart';
import 'package:heeelo/Screens/Login_screen.dart';
import 'package:heeelo/Screens/signup_screen.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: LogIn.id,
    routes: {
      LogIn.id:(Context)=>LogIn(),
      Sign_Up.id:(Context)=>Sign_Up(),
    },
  ),);
}