import 'package:academix/Theme/themecolor.dart';
import 'package:flutter/material.dart';

class AcadmicperformancefinaltableWidget extends StatefulWidget {
  const AcadmicperformancefinaltableWidget({super.key});

  @override
  State<AcadmicperformancefinaltableWidget> createState() =>
      _AcadmicperformancefinaltableWidgetState();
}

class _AcadmicperformancefinaltableWidgetState
    extends State<AcadmicperformancefinaltableWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Final"),
          Container(
            child: Column(
              children: [
                Container( padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(color: Colors.grey.withOpacity(.5),
                    borderRadius:BorderRadius.vertical(
                      top: Radius.circular(10),
                    ), ),
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth / 2,
                        child: Text("Subject"),
                      ),
                      Container(
                        child: Text("Final",style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
                Container( padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.15),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth / 2,
                        child: Text(
                          "English",
                          style: TextStyle(color: MyColors.primaryColor),
                        ),
                      ),
                      Container(
                        child: Text("A+/94"),
                      ),
                    ],
                  ),
                ),
                Container( padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.5),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth / 2,
                        child: Text(
                          "Hindi",
                          style: TextStyle(color: MyColors.primaryColor),
                        ),
                      ),
                      Container(
                        child: Text("A+/90"),
                      ),
                    ],
                  ),
                ),
                Container( padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.15),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth / 2,
                        child: Text(
                          "Mathematics",
                          style: TextStyle(color: MyColors.primaryColor),
                        ),
                      ),
                      Container(
                        child: Text("A-/94"),
                      ),
                    ],
                  ),
                ),
                Container( padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.5),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth / 2,
                        child: Text(
                          "Science",
                          style: TextStyle(color: MyColors.primaryColor),
                        ),
                      ),
                      Container(
                        child: Text("A+/96"),
                      ),
                    ],
                  ),
                ),
                Container( padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.15),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth / 2,
                        child: Text(
                          "Social Science",
                          style: TextStyle(color: MyColors.primaryColor),
                        ),
                      ),
                      Container(
                        child: Text("A/90"),
                      ),
                    ],
                  ),
                ),
                Container( padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(color: Colors.grey.withOpacity(.5),
                    borderRadius:BorderRadius.vertical(
                      bottom: Radius.circular(10),
                    ), ),
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth / 2,
                        child: Text(
                          "Sanskrit",
                          style: TextStyle(color: MyColors.primaryColor),
                        ),
                      ),
                      Container(
                        child: Text("A-/94"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 255),
            child: Container(
              child: Row(
                children: [
                  Text(
                    "GPA",
                    style: TextStyle(color: MyColors.secondaryColor,fontSize: screenWidth *.03),
                  ),
                  SizedBox(
                    width: screenWidth * .08,
                  ),
                  Text("4.21",style: TextStyle(color: MyColors.secondaryColor,fontSize: screenWidth *.03),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
