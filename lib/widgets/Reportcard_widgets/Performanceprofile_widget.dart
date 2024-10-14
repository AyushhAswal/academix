import 'package:academix/Theme/themecolor.dart';
import 'package:flutter/material.dart';

class PerformanceprofileWidget extends StatefulWidget {
  final String contex;
  final String info;

  const PerformanceprofileWidget(
      {super.key, required this.contex, required this.info});

  @override
  State<PerformanceprofileWidget> createState() =>
      _PerformanceprofileWidgetState();
}

class _PerformanceprofileWidgetState extends State<PerformanceprofileWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: screenWidth / 2,
                child: Text(widget.contex),
              ),
              Container(
                child: Text(widget.info,style: TextStyle(color: MyColors.primaryColor),),
              )
            ],
          ),

        ],
      ),
    );
  }
}
