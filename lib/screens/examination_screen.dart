import 'package:academix/theme/themecolor.dart';
import 'package:academix/widgets/examinationscreen_widget/examinationtile_widget.dart';
import 'package:academix/widgets/examinationscreen_widget/examinationtilecompleted_widget.dart';
import 'package:flutter/material.dart';

class ExaminationScreen extends StatefulWidget {
  const ExaminationScreen({super.key});

  @override
  State<ExaminationScreen> createState() => _ExaminationScreenState();
}

class _ExaminationScreenState extends State<ExaminationScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: screenHeight * .15,
                  color: Colors.white,
                ),
                Container(
                  height: screenHeight * .15,
                  decoration: BoxDecoration(
                    color: MyColors.primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 50, left: 20),
                    child: Container(
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * .025,
                          ),
                          Text(
                            "Examination ",
                            style: TextStyle(
                                fontSize: screenHeight * .025,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: screenHeight * .15,
                  color: MyColors.primaryColor,
                ),
                Container(),
                Container(
                    height: screenHeight,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Examination list ",
                            style: TextStyle(
                                fontSize: screenWidth * .04,
                                color: MyColors.primaryColor),
                          ),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          ExaminationtileWidget(
                            subject: "Science Basic Assigment Test",
                            duration: "Duration 30min",
                          ),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          ExaminationtilecompletedWidget(
                            subject: "General Knowledge Level IV",
                            duration: "Duration 30min",
                          ),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          ExaminationtileWidget(
                            subject: "Science Basic Assigment Test",
                            duration: "Duration 30min",
                          ),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          ExaminationtilecompletedWidget(
                            subject: "General Knowledge Level IV",
                            duration: "Duration 30min",
                          ),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          ExaminationtileWidget(
                            subject: "Science Basic Assigment Test",
                            duration: "Duration 30min",
                          ),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          ExaminationtileWidget(
                            subject: "Science Basic Assigment Test",
                            duration: "Duration 30min",
                          ),
                        ],
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
