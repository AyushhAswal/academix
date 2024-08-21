import 'package:academix/Theme/themecolor.dart';
import 'package:flutter/material.dart';

class ExaminationtilecompletedWidget extends StatefulWidget {
  final String subject;
  final String duration;

  const ExaminationtilecompletedWidget(
      {super.key, required this.subject, required this.duration});

  @override
  State<ExaminationtilecompletedWidget> createState() =>
      _ExaminationtilecompletedWidgetState();
}

class _ExaminationtilecompletedWidgetState
    extends State<ExaminationtilecompletedWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * .9,
      height: screenHeight * .13,
      decoration: BoxDecoration(
          color: MyColors.examinationsection,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.subject, style: TextStyle(fontSize: screenWidth * .04)),
            SizedBox(
              height: screenHeight * .001,
            ),
            Row(
              children: [
                Icon(
                  Icons.timer,
                  color: Colors.black54,
                ),
                SizedBox(
                  height: screenHeight * .01,
                ),
                Text(
                  widget.duration,
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(
                  width: screenWidth * .45,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * .01,
            ),
            Row(
              children: [
                Text(
                  "Score:40/200",
                  style: TextStyle(color: Colors.black54),
                ),SizedBox(width: screenWidth *.02,),
                Container(
                  width: screenWidth * .28,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Completed',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
