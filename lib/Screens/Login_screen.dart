import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heeelo/Screens/signup_screen.dart';
import 'package:google_fonts/google_fonts.dart';
class LogIn extends StatefulWidget {
  static const String id="login_screen";
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image:AssetImage('images/backpic.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 300.0,
                    child: Center(
                      child: Text(
                        "Welcome To Travel",
                        style: GoogleFonts.pacifico(
                          fontSize: 40.0,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      onChanged: (value){
                        email=value;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email,
                          color: Colors.black,
                          size: 25.0,
                        ),
                        hintText: "Email",
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      onChanged: (value){
                        password=value;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.transparent,
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                        ),
                        prefixIcon: Icon(Icons.lock,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  RaisedButton(onPressed: (){
                  },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 11.0,horizontal: 50.0),
                    color: Colors.lightBlue,
                    child: Text("Log in",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have account",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      FlatButton(onPressed: (){
                        Navigator.pushNamed(context, Sign_Up.id);
                      }, child: Text("Register",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
