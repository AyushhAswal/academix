import 'package:flutter/material.dart';

class NoticeboardWidget extends StatefulWidget {
  final colors;
  final String text;
  final String date;


  const NoticeboardWidget(
      {super.key,
      required this.colors,
      required this.text,
      required this.date});

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
      width: screenWidth * .45,
      decoration: BoxDecoration(
        color: widget.colors,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10,left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container( height: screenHeight * .07,width: screenWidth * .2,
              decoration: BoxDecoration( borderRadius: BorderRadiusDirectional.circular(8),
                  image: DecorationImage(
                      image: AssetImage("assets/images/school.jpg"),
                      fit: BoxFit.cover)),
            ), SizedBox(
              height: screenHeight * .01,
            ),
            Text(widget.text),
            Text(
              widget.date,
              style: TextStyle(color: Colors.black38),
            )
          ],
        ),
      ),
    );
  }
}
