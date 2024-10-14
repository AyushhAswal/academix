import 'package:academix/Theme/themecolor.dart';
import 'package:flutter/material.dart';

class AttendanceWidget extends StatefulWidget {
  final String month;
  final String presentno;
  final String absentno;
  final String leave;

  const AttendanceWidget({super.key,required this.month, required this.absentno, required this.leave,required this .presentno});

  @override
  State<AttendanceWidget> createState() => _AttendanceWidgetState();
}

class _AttendanceWidgetState extends State<AttendanceWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: CircleAvatar(
              radius: 25,
              child: Text(
                widget.month,
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: MyColors.secondaryColor,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(10)),
            height: screenHeight * .07,
            width: screenWidth * .25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.presentno,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
                Text(
                  "Present",
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                 widget.absentno,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.red),
                ),
                Text(
                  "Absent",
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: BorderRadius.circular(10)),
            height: screenHeight * .07,
            width: screenWidth * .25,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.leave,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
                Text(
                  "Leave",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(10)),
            height: screenHeight * .07,
            width: screenWidth * .25,
          ),
        ],
      ),
    );
  }
}
