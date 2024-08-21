import 'package:academix/Theme/themecolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReportcardsectionWidget extends StatefulWidget {
  final String text;

  const ReportcardsectionWidget({
    super.key,
    required this.text,
  });

  @override
  State<ReportcardsectionWidget> createState() =>
      _ReportcardsectionWidgetState();
}

class _ReportcardsectionWidgetState extends State<ReportcardsectionWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.text,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: screenWidth * .045),
          ),
          Icon(Icons.arrow_forward_ios,color: MyColors.primaryColor,)
        ],
      ),
    );
  }
}
