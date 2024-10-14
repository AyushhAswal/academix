import 'package:academix/Theme/themecolor.dart';
import 'package:flutter/material.dart';

class AcadmicperformancetableWidget extends StatefulWidget {
  final String term;

  const AcadmicperformancetableWidget({super.key, required this.term});

  @override
  State<AcadmicperformancetableWidget> createState() =>
      _AcadmicperformancetableWidgetState();
}

class _AcadmicperformancetableWidgetState
    extends State<AcadmicperformancetableWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Heading
          Text(widget.term),

          // Main Table
          Container(
            child: Column(
              children: [
                // table heading
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.5),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth * .4,
                        child: Text("Subject"),
                      ),
                      Container(
                        width: screenWidth * .15,
                        child: Text("Otr 1"),
                      ),
                      Container(
                        width: screenWidth * .15,
                        child: Text("Otr 2"),
                      ),
                      Container(
                        child: Text("Term 1"),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: Colors.grey.withOpacity(.15),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth * .4,
                        child: Text(
                          "English",
                          style: TextStyle(color: MyColors.primaryColor),
                        ),
                      ),
                      Container(
                        width: screenWidth * .15,
                        child: Text("A+/96"),
                      ),
                      Container(
                        width: screenWidth * .15,
                        child: Text("A+/96"),
                      ),
                      Container(
                        child: Text(
                          "A+/96",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey.withOpacity(.5),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth * .4,
                        child: Text(
                          "Hindi",
                          style: TextStyle(color: MyColors.primaryColor),
                        ),
                      ),
                      Container(
                        width: screenWidth * .15,
                        child: Text("A+/96"),
                      ),
                      Container(
                        width: screenWidth * .15,
                        child: Text("A+/96"),
                      ),
                      Container(
                        child: Text("A+/96"),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey.withOpacity(.15),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth * .4,
                        child: Text(
                          "Mathematics",
                          style: TextStyle(color: MyColors.primaryColor),
                        ),
                      ),
                      Container(
                        width: screenWidth * .15,
                        child: Text("A+/96"),
                      ),
                      Container(
                        width: screenWidth * .15,
                        child: Text("A+/96"),
                      ),
                      Container(
                        child: Text("A+/96"),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey.withOpacity(.5),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth * .4,
                        child: Text(
                          "Science",
                          style: TextStyle(color: MyColors.primaryColor),
                        ),
                      ),
                      Container(
                        width: screenWidth * .15,
                        child: Text("A+/94"),
                      ),
                      Container(
                        width: screenWidth * .15,
                        child: Text("A+/94"),
                      ),
                      Container(
                        child: Text("A+/94"),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey.withOpacity(.15),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth * .4,
                        child: Text(
                          "Sanskrit",
                          style: TextStyle(color: MyColors.primaryColor),
                        ),
                      ),
                      Container(
                        width: screenWidth * .15,
                        child: Text("A+97"),
                      ),
                      Container(
                        width: screenWidth * .15,
                        child: Text("A+97"),
                      ),
                      Container(
                        child: Text("A+97"),
                      ),
                    ],
                  ),
                ),
                Container( decoration: BoxDecoration(color: Colors.grey.withOpacity(.5),
                borderRadius:BorderRadius.vertical(
                  bottom: Radius.circular(10),
                ), ),

                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth * .4,
                        child: Text(
                          "Social Science",
                          style: TextStyle(color: MyColors.primaryColor),
                        ),
                      ),
                      Container(
                        width: screenWidth * .15,
                        child: Text("A+/96"),
                      ),
                      Container(
                        width: screenWidth * .15,
                        child: Text("A+/96"),
                      ),
                      Container(
                        child: Text("A+/96"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 255),
            child: Container(
              child: Row(
                children: [
                  Text(
                    "GPA",
                    style: TextStyle(
                        color: MyColors.secondaryColor,
                        fontSize: screenWidth * .03),
                  ),
                  SizedBox(
                    width: screenWidth * .08,
                  ),
                  Text(
                    "4.21",
                    style: TextStyle(
                        color: MyColors.secondaryColor,
                        fontSize: screenWidth * .03),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
