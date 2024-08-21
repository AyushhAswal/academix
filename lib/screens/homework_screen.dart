import 'package:academix/Theme/themecolor.dart';
import 'package:academix/screens/drawer_screen.dart';
import 'package:academix/widgets/dashboard_widgets/homework_widget.dart';
import 'package:flutter/material.dart';

class HomeworkScreen extends StatefulWidget {
  const HomeworkScreen({super.key});

  @override
  State<HomeworkScreen> createState() => _HomeworkScreenState();
}

class _HomeworkScreenState extends State<HomeworkScreen> {
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
                    padding: const EdgeInsets.only(top: 50, left: 20),
                    child: Container(
                      child: Row(
                        children: [
                          GestureDetector( onTap: (){
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
                            "Homework",
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
                Container(
                  height: screenHeight,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Today",
                                style: TextStyle(
                                    fontSize: screenWidth * .04,
                                    color: MyColors.primaryColor)),SizedBox(
                              height: screenHeight * .01,
                            ),
                            HomeworkWidget(
                              subject: "English",
                              text: "Learn Chapter 5 with one Essay",
                            ),
                            SizedBox(
                              height: screenHeight * .01,
                            ),
                            HomeworkWidget(
                              subject: "Maths",
                              text: "Exercise Trigonometry 1st topic",
                            ),
                            SizedBox(
                              height: screenHeight * .01,
                            ),
                            HomeworkWidget(
                              subject: "Hindi",
                              text: "Hindi writing 3 pages",
                            ),
                            SizedBox(
                              height: screenHeight * .01,
                            ),
                            HomeworkWidget(
                              subject: "Social Science ",
                              text: "Test for History first session",
                            ),
                            SizedBox(
                              height: screenHeight * .025,
                            ),
                            Text("Yesterday",
                                style: TextStyle(
                                    fontSize: screenWidth * .04,
                                    color: MyColors.primaryColor)),
                            HomeworkWidget(
                              subject: "English",
                              text: "Learn Chapter 5 with one Essay",
                            ),
                            SizedBox(
                              height: screenHeight * .01,
                            ),
                            HomeworkWidget(
                              subject: "Maths",
                              text: "Exercise Trigonometry 1st topic",
                            ),
                            SizedBox(
                              height: screenHeight * .025,
                            ),
                            Text("16 july 2024",
                                style: TextStyle(
                                    fontSize: screenWidth * .04,
                                    color: MyColors.primaryColor)),SizedBox(
                              height: screenHeight * .01,
                            ),
                            HomeworkWidget(
                              subject: "Hindi",
                              text: "Hindi writing 3 pages",
                            ),
                            SizedBox(
                              height: screenHeight * .01,
                            ),
                            HomeworkWidget(
                              subject: "Social Science ",
                              text: "Test for History first session",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
