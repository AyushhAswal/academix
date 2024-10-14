import 'package:academix/Theme/themecolor.dart';
import 'package:flutter/material.dart';

class TeacherremarksWidget extends StatefulWidget {
  const TeacherremarksWidget({super.key});

  @override
  State<TeacherremarksWidget> createState() => _TeacherremarksWidgetState();
}

class _TeacherremarksWidgetState extends State<TeacherremarksWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Remarks By Teacher"),SizedBox(
            height: screenHeight * .02,
          ),
          Container(
            height: screenHeight * .2,
            width: screenWidth * .85,
            decoration: BoxDecoration(color: MyColors.remarks,borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Thanks for a fantastic year at school this year! \n It's been awesome to see everyone grow and\n develop so much and our community has\n come together so wonderfully with all of our \nexciting new projects and activities. Hope you \nall have a fantastic summer - and looking\n forward to seeing everyone back in the fall.", style: TextStyle(color: Colors.orangeAccent[200]),),
              ],
            ),
          ),SizedBox(
            height: screenHeight * .02,
          ),Text("- Viraj Mehta",style: TextStyle(color: MyColors.secondaryColor),),SizedBox(
            height: screenHeight * .05,
          ),
        ],
      ),
    );
  }
}
