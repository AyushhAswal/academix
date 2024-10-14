import 'package:academix/Theme/themecolor.dart';
import 'package:flutter/material.dart';

class HeaderforallscreensWidget extends StatefulWidget {
  const HeaderforallscreensWidget({super.key});

  @override
  State<HeaderforallscreensWidget> createState() =>
      _HeaderforallscreensWidgetState();
}

class _HeaderforallscreensWidgetState extends State<HeaderforallscreensWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.15,
            color: MyColors.primaryColor,
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  SizedBox(width: screenWidth * 0.025),
                  Text(
                    "Examination",
                    style: TextStyle(
                      fontSize: screenHeight * 0.025,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Container(width: screenWidth,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
              ),
            ),

          ))
        ],
      ),
    );
  }
}
