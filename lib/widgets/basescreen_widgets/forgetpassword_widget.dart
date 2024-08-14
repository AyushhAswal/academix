import 'package:flutter/material.dart';

class ForgetpasswordWidget extends StatefulWidget {
  const ForgetpasswordWidget({super.key});

  @override
  State<ForgetpasswordWidget> createState() => _ForgetpasswordWidgetState();
}

class _ForgetpasswordWidgetState extends State<ForgetpasswordWidget> {
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
            height: screenHeight * .2,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.redAccent[400],
                  borderRadius: BorderRadiusDirectional.circular(70)),
              height: screenHeight * .054,
              width: screenWidth,
              child: const Center(
                  child: Text(
                "Generate OTP",
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
              onPressed: () {},
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
