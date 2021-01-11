import 'package:flutter/material.dart';
import 'package:heeelo/Screens/Login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
class Sign_Up extends StatefulWidget {
  static const String id="signup_screen";
  @override
  _Sign_UpState createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
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
              image: AssetImage('images/backpic.jpg'),
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
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.transparent,
                        hintText: "Name",
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0
                        ),
                        prefixIcon: Icon(Icons.person,
                          color: Colors.black,
                          size: 25.0,
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
                        fillColor: Colors.transparent,
                        filled: true,
                        hintText: "Email",
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0
                        ),
                        prefixIcon: Icon(Icons.email,
                          color: Colors.black,
                          size: 25.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      onChanged: (value){
                        password=value;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.transparent,
                        filled: true,
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0
                        ),
                        prefixIcon: Icon(Icons.lock,
                          color: Colors.black,
                          size: 25.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  RaisedButton(onPressed: (){
                    if(email.isNotEmpty&&password.isNotEmpty) {
                      Navigator.pushNamed(context, LogIn.id);
                      print(email);
                      print(password);
                    }
                  },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 11.0,horizontal: 50.0),
                    color: Colors.lightBlue,
                    child: Text("Register",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have account',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      FlatButton(onPressed: (){
                        Navigator.pushNamed(context, LogIn.id);
                      }, child: Text("Log in",
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
