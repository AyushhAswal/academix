import 'package:academix/widgets/dashboard_widgets/homework_widget.dart';
import 'package:academix/widgets/dashboard_widgets/noticeboard_widget.dart';

import 'package:flutter/material.dart';
import '../Theme/themecolor.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
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
                ),
                Positioned(
                  top: screenHeight * .08,
                  left: 20,
                  child: Row(
                    children: [
                      Icon(
                        Icons.grid_on,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: screenWidth * .05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ayush Aswal",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: screenWidth * .05),
                          ),
                          Text(
                            "Bsc-IT",
                            style: TextStyle(color: Colors.white70),
                          )
                        ],
                      ),
                      SizedBox(width: screenWidth * 0.35),
                      CircleAvatar(
                        backgroundImage: AssetImage('lib/images/avatar.jpg'),
                      ),
                    ],
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Notice Board",
                        style: TextStyle(
                          color: MyColors.primaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenHeight * .01),
                      Container(
                        width: screenWidth,
                        // Ensure that this is within screen constraints
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,physics: BouncingScrollPhysics(),
                          child: Row(
                            children: [
                              NoticeboardWidget(
                                colors: Colors.greenAccent[100],
                                text:
                                    "School is going for \n vacation next \n month",
                                date: "02 March 2020",
                              ),
                              SizedBox(width: 20),
                              NoticeboardWidget(
                                date: "05 March 2020",
                                colors: Colors.lightBlueAccent,
                                text: "Exams start from \n next week",
                              ),
                              SizedBox(width: 20),
                              NoticeboardWidget(
                                date: "10 March 2020",
                                colors: Colors.orangeAccent[100],
                                text: "Parent-Teacher \n meeting on Friday",
                              ),
                              SizedBox(width: 20),
                              NoticeboardWidget(
                                date: "12 March 2020",
                                colors: Colors.pinkAccent[100],
                                text: "Annual Sports Day \n on Saturday",
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * .02,
                      ),
                      Text(
                        "Homework",
                        style: TextStyle(
                          color: MyColors.primaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * .01,
                      ),
                      Container(
                        child: Column(
                          children: [
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
                              height: screenHeight * .01,
                            ),
                            HomeworkWidget(
                              subject: "Science",
                              text: "Learn Atoms physic",
                            ),
                            SizedBox(
                              height: screenHeight * .01,
                            ),
                            HomeworkWidget(
                              subject: "English ",
                              text: "English writing 3pages",
                            ),
                            SizedBox(
                              height: screenHeight * .01,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
