import 'package:flutter/material.dart';

class ChangepasswordWidget extends StatefulWidget {
  const ChangepasswordWidget({super.key});

  @override
  State<ChangepasswordWidget> createState() => _ChangepasswordWidgetState();
}

class _ChangepasswordWidgetState extends State<ChangepasswordWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth * .08, vertical: screenHeight * .04),
      child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Phone No.
              Text(" Create New Password"),
              TextFormField(
                obscuringCharacter: "*",
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter your New Password", border: InputBorder.none),
              ),
              SizedBox(
                height: screenHeight * .06,
              ),

              // Password
              Text("Confrim New Password"),
              TextFormField(
                obscuringCharacter: "*",
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter your New Password", border: InputBorder.none),
              ),
              SizedBox(height: screenHeight * .05),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.redAccent[400],
                      borderRadius: BorderRadiusDirectional.circular(70)),
                  height: screenHeight * .054,
                  width: screenWidth,
                  child: Center(
                      child: Text(
                        "Submit",
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
                  onPressed: () {
                  },
                  child: Text("Cancel", style: TextStyle(
                    color: Colors.redAccent[400],
                  ),),
                ),
              ),
            ],
          )),
    );
  }
}
