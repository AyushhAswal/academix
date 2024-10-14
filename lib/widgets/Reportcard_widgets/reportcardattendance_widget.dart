import 'package:flutter/material.dart';

class ReportcardattendanceWidget extends StatefulWidget {
  final String term;
  final String days;

  const ReportcardattendanceWidget({super.key, required this.days, required this.term});

  @override
  State<ReportcardattendanceWidget> createState() => _ReportcardattendanceWidgetState();
}

class _ReportcardattendanceWidgetState extends State<ReportcardattendanceWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.term),
          Container(
            width: screenWidth * .9,
            height: screenHeight * .08,
            decoration: BoxDecoration(color: Colors.lightGreen[200], borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.days,
                  style: TextStyle(
                      fontSize: screenWidth * .045,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                Text(
                  "Total attendance of the student",
                  style: TextStyle(
                      color: Colors.green, fontSize: screenWidth * .029),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
