import 'package:academix/theme/themecolor.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Container(
          height: screenHeight * .15,
          color: Colors.white,
        ),
        Container(
          height: screenHeight * .15,
          decoration: BoxDecoration(
            color: MyColors.primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
            ),
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.grid_on,
              color: Colors.white,
            ),
            SizedBox(
              width: screenWidth * .05,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ayush Aswal",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * .05),
                ),
                Text(
                  "Bsc-IT",
                  style: TextStyle(color: Colors.white70),
                )
              ],
            ),
            SizedBox(width: screenWidth * 0.35),
            CircleAvatar(
              backgroundImage: AssetImage('lib/images/avatar.jpg'),
            ),
          ],
        ),
      ],
    );
  }
}
