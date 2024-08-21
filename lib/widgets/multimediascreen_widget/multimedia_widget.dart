import 'package:academix/Theme/themecolor.dart';
import 'package:flutter/material.dart';

class MultimediaWidget extends StatefulWidget {
  final String subject;

  final String context;
  final String size;
  final String format;

  const MultimediaWidget(
      {super.key,
      required this.subject,
      required this.size,
        required this .format,
      required this.context});

  @override
  State<MultimediaWidget> createState() => _MultimediaWidgetState();
}

class _MultimediaWidgetState extends State<MultimediaWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container( decoration:BoxDecoration(
      color: Colors.red[100], borderRadius: BorderRadiusDirectional.circular(10)
    ),

      height: screenHeight * .14,
      width: screenWidth,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              child: Center(
                  child: Text(
                widget.format,
                style: TextStyle(color: MyColors.primaryColor),
              )),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(8)),
              height: screenHeight * .08,
              width: screenWidth * .15,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.subject,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: screenWidth * .045),
              ),
              Text(widget.context,style: TextStyle(color: Colors.black54),),
              Text(widget.size,style: TextStyle(color: Colors.black54),),
            ],
          )
        ],
      ),
    );
  }
}
