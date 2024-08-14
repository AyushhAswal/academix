import 'package:academix/Theme/themecolor.dart';
import 'package:academix/widgets/basescreen_widgets/login_widget.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: screenHeight / 2,
                  color: Colors.white,
                ),
                Container(
                  height: screenHeight / 2,
                  decoration: BoxDecoration(
                    color: MyColors.primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
                Positioned(
                  top: 365,
                  left: 150,
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white, fontSize: screenHeight * .035),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  height: screenHeight / 2,
                  color: Colors.deepPurple,
                ),
                Container(
                  height: screenHeight / 2,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: LoginWidget(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
