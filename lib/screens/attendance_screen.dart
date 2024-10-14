import 'package:academix/Theme/themecolor.dart';
import 'package:academix/screens/attendancecalendar_screen.dart';
import 'package:academix/widgets/Reportcard_widgets/reportcardattendance_widget.dart';
import 'package:academix/widgets/attendancescreen_widgets/attendance_widget.dart';
import 'package:flutter/material.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: screenHeight * 0.15,
              ),
              Container(
                height: screenHeight * 0.15,
                decoration: BoxDecoration(
                  color: MyColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back, color: Colors.white)),
                      SizedBox(width: screenWidth * 0.025),
                      Text(
                        "Attendance",
                        style: TextStyle(
                          fontSize: screenHeight * 0.025,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: screenHeight,
                  color: MyColors.primaryColor,
                ),
                Container(
                    height: screenHeight,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: SingleChildScrollView( physics: BouncingScrollPhysics(),
                      child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                            child: Container(child: Text("Year 2024",style: TextStyle(color: MyColors.primaryColor,fontSize: screenWidth *.04),)),
                          ),
                          GestureDetector ( onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>AttendancecalendarScreen(),
                              ),
                            );
                          },
                            child: AttendanceWidget(
                              month: "APR",
                              presentno: "23",
                              absentno: "3",
                              leave: "0",
                            ),
                          ), SizedBox(height: screenHeight *.02,),
                          AttendanceWidget(
                            month: "MAY",
                            presentno: "24",
                            absentno: "0",
                            leave: "3",
                          ), SizedBox(height: screenHeight *.02,),
                          AttendanceWidget(
                            month: "Jun",
                            presentno: "24",
                            absentno: "0",
                            leave: "3",
                          ), SizedBox(height: screenHeight *.02,),
                          AttendanceWidget(
                            month: "JUL",
                            presentno: "24",
                            absentno: "0",
                            leave: "3",
                          ), SizedBox(height: screenHeight *.02,),
                          AttendanceWidget(
                            month: "AUG",
                            presentno: "24",
                            absentno: "0",
                            leave: "3",
                          ) ,SizedBox(height: screenHeight *.02,),
                          AttendanceWidget(
                            month: "SEP",
                            presentno: "24",
                            absentno: "0",
                            leave: "3",
                          ), SizedBox(height: screenHeight *.02,),
                          AttendanceWidget(
                            month: "OCT",
                            presentno: "24",
                            absentno: "0",
                            leave: "3",
                          ), SizedBox(height: screenHeight *.02,),
                          AttendanceWidget(
                            month: "NOV",
                            presentno: "24",
                            absentno: "0",
                            leave: "3",
                          ), SizedBox(height: screenHeight *.02,),
                          AttendanceWidget(
                            month: "DEC",
                            presentno: "24",
                            absentno: "0",
                            leave: "3",
                          )
                        ],
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
