import 'package:academix/screens/calendar_screen.dart';
import 'package:academix/screens/dashboard_screen.dart';
import 'package:academix/screens/feedetails_screen.dart';
import 'package:academix/screens/homework_screen.dart';
import 'package:academix/widgets/basescreen_widgets/forgetpassword_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginWidget extends StatefulWidget {
  final VoidCallback onForgotPassword;
  const LoginWidget({super.key ,required this .onForgotPassword});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth * .08, vertical: screenHeight * .04),
      child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Phone No.
              Text("Phone Number"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child:
                    Text("+91", style: TextStyle(fontSize: screenWidth * .06)),
                  ),
                  Container(
                    width: screenWidth * .7,
                    child: TextFormField(
                      style: TextStyle(fontSize: screenWidth * .06),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "Enter your phone no.",
                          hintStyle: TextStyle(fontSize: screenWidth * .06),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * .06,
              ),

              // Password
              Text("Password"),
              TextFormField(
                obscuringCharacter: "*",
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter your Password", border: InputBorder.none),
              ),
              SizedBox(height: screenHeight * .05),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DashboardScreen(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.redAccent[400],
                      borderRadius: BorderRadiusDirectional.circular(70)),
                  height: screenHeight * .054,
                  width: screenWidth,
                  child: Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
              SizedBox(
                height: screenHeight * .005,
              ),
              Container(
                width: screenWidth,
                child: TextButton(
                  onPressed:  widget.onForgotPassword,
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Colors.redAccent[400],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}