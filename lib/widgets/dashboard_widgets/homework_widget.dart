import 'package:academix/Theme/themecolor.dart';
import 'package:flutter/material.dart';

class HomeworkWidget extends StatefulWidget {
  final String subject;
  final String text;

  const HomeworkWidget({super.key, required this.subject, required this.text});

  @override
  State<HomeworkWidget> createState() => _HomeworkWidgetState();
}

class _HomeworkWidgetState extends State<HomeworkWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        color:  MyColors.homeworkColor,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      height: screenHeight * .075,
      width: screenWidth * .9,
      child: Row(
        children: [
          Checkbox(shape: const CircleBorder(),
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.text),
                  Text(
                    "${widget.subject} / Today",
                    style: const TextStyle(color: Colors.black38),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
