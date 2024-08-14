import 'package:flutter/material.dart';

class NoticeboardWidget extends StatefulWidget {
  final colors;
  final String text;
  final String date;

  const NoticeboardWidget(
      {super.key, required this.colors, required this.text,required this. date});

  @override
  State<NoticeboardWidget> createState() => _NoticeboardWidgetState();
}

class _NoticeboardWidgetState extends State<NoticeboardWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * .2,
      width: screenWidth * .5,
      decoration: BoxDecoration(
        color: widget.colors,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20,bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.text), Text(widget.date,style: TextStyle(color: Colors.black38),)
          ],
        ),
      ),
    );
  }
}
