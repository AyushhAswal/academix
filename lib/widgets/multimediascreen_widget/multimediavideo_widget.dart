import 'package:flutter/material.dart';

class MultimediavideoWidget extends StatefulWidget {
  final String context;
  final String type;
  const MultimediavideoWidget({super.key, required this .context, required this .type});

  @override
  State<MultimediavideoWidget> createState() => _MultimediavideoWidgetState();
}

class _MultimediavideoWidgetState extends State<MultimediavideoWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          color: Colors.red[100],
          borderRadius: BorderRadiusDirectional.circular(10)),
      height: screenHeight * .31,
      width: screenWidth,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenHeight * .2,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10),
                color: Colors.grey,
              ),
            ) , SizedBox(height: screenHeight*.01,),Text(widget.context,style: TextStyle(fontWeight: FontWeight.bold,fontSize: screenWidth * .04),) ,Text(widget.type,style: TextStyle(color: Colors.black54),)

          ],
        ),
      ),
    );
  }
}
