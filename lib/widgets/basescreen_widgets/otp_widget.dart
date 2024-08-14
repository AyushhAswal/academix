import 'package:academix/Theme/themecolor.dart';
import 'package:academix/theme/themecolor.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:academix/Theme/themecolor.dart';

class OtpWidget extends StatefulWidget {
  const OtpWidget({super.key});

  @override
  State<OtpWidget> createState() => _OtpWidgetState();
}

class _OtpWidgetState extends State<OtpWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(padding: EdgeInsets.symmetric(
        horizontal: screenWidth * .08, vertical: screenHeight * .04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enter OTP",
            style: TextStyle(fontSize: screenWidth * .04),
          ),
          SizedBox(height: screenHeight * .01),
          Pinput(
            keyboardType: TextInputType.number,
            length: 5,
          ),
          SizedBox(height: screenHeight * .01),Text(
            "Send Again",
            style: TextStyle(fontSize: screenWidth * .04,
                color:Colors.redAccent[400]),
          ),SizedBox(height: screenHeight * .15,),Container(
            decoration: BoxDecoration(
                color: Colors.redAccent[400],
                borderRadius: BorderRadiusDirectional.circular(70)),
            height: screenHeight * .054,
            width: screenWidth,
            child: Center(
                child: Text(
                  "Verify",
                  style: TextStyle(color: Colors.white),
                )),
          ),Container(
            width: screenWidth,
            child: TextButton(
              onPressed: () {},
              child: Text("Cancel", style: TextStyle(
                color: Colors.redAccent[400],
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
