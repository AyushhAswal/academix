import 'package:academix/Theme/themecolor.dart';
import 'package:academix/screens/academicyear_screen.dart';
import 'package:academix/screens/calendar_screen.dart';
import 'package:academix/screens/dashboard_screen.dart';
import 'package:academix/screens/examination_screen.dart';
import 'package:academix/screens/feedetails_screen.dart';
import 'package:academix/screens/homework_screen.dart';
import 'package:academix/screens/multimedia_screen.dart';
import 'package:academix/screens/noticeboard_screen.dart';
import 'package:academix/screens/profile_screen.dart';
import 'package:academix/screens/reportcard_screen.dart';
import 'package:academix/screens/try.dart';
import 'package:academix/widgets/drawer_widgets/options_widget.dart';
import 'package:academix/widgets/others/headerforallscreens_widget.dart';
import 'package:flutter/material.dart';
import 'package:academix/Theme/themecolor.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(child: Icon(Icons.person),),
                    SizedBox(
                      width: screenWidth * .08,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ayush Aswal",
                          style: TextStyle(
                              color: Colors.white, fontSize: screenWidth * .04),
                        ),
                        Text(
                          "Bsc-IT",
                          style: TextStyle(color: Colors.white70),
                        )
                      ],
                    ),
                    SizedBox(
                      width: screenWidth * .4,
                    ),
                    GestureDetector( onTap: (){
                      Navigator.pop(context);
                    },
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    )
                  ],
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DashboardScreen(),
                                ),
                              );
                            },
                            child: OptionsWidget(
                              text: " Dashboard",
                              icon: Icon(Icons.home),
                            ),
                          ),
                          GestureDetector(onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>HomeworkScreen(),
                              ),
                            );
                          },
                            child: OptionsWidget(
                              text: "Homework",
                              icon: Icon(Icons.menu_book_sharp),
                            ),
                          ),
                          OptionsWidget(
                              text: "Attendance",
                              icon: Icon(Icons.architecture)),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * .04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FeedetailsScreen(),
                              ),
                            );
                          },
                            child: OptionsWidget(
                              text: " Fee Details",
                              icon: Icon(Icons.money),
                            ),
                          ),
                          GestureDetector( onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>ExaminationScreen(),
                              ),
                            );
                          },
                            child: OptionsWidget(
                                text: "Examination",
                                icon: Icon(Icons.pending_actions_outlined)),
                          ),
                          GestureDetector( onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>Try (),
                              ),
                            );
                          },
                            child: OptionsWidget(
                                text: "Report Card",
                                icon: Icon(Icons.note_alt_rounded)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * .04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CalendarScreen(),
                              ),
                            );
                          },
                            child: OptionsWidget(
                                text: " Calendar",
                                icon: Icon(Icons.calendar_month)),
                          ),
                          GestureDetector(onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NoticeboardScreen(),
                              ),
                            );
                          },
                            child: OptionsWidget(
                                text: "Notice Board",
                                icon: Icon(Icons.format_list_bulleted)),
                          ),
                          GestureDetector(onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MultimediaScreen(),
                              ),
                            );
                          },
                            child: OptionsWidget(
                                text: "Multimedia ",
                                icon: Icon(Icons.video_camera_back_outlined)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * .04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AcademicyearScreen(),
                              ),
                            );
                          },

                            child: OptionsWidget(
                                text: " Academic Year", icon: Icon(Icons.scale)),
                          ),
                          GestureDetector(onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileScreen(),
                              ),
                            );
                          },
                            child: OptionsWidget(
                                text: "Profile", icon: Icon(Icons.person)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
