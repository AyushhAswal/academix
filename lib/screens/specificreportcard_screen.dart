import 'package:academix/Theme/themecolor.dart';
import 'package:academix/widgets/Reportcard_widgets/Performanceprofile_widget.dart';
import 'package:academix/widgets/Reportcard_widgets/acadmicperformancefinaltable_widget.dart';
import 'package:academix/widgets/Reportcard_widgets/acadmicperformancetable_widget.dart';
import 'package:academix/widgets/Reportcard_widgets/reportcardattendance_widget.dart';
import 'package:academix/widgets/Reportcard_widgets/teacherremarks_widget.dart';
import 'package:flutter/material.dart';

class SpecificreportcardScreen extends StatefulWidget {
  const SpecificreportcardScreen({super.key});

  @override
  State<SpecificreportcardScreen> createState() =>
      _SpecificreportcardScreenState();
}

class _SpecificreportcardScreenState extends State<SpecificreportcardScreen> {
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
                      GestureDetector( onTap: (){
                        Navigator.pop(context);
                      },



                          child: Icon(Icons.arrow_back, color: Colors.white)),
                      SizedBox(width: screenWidth * 0.025),
                      Text(
                        "Class 12th (2020-21)",
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                ),
                                SizedBox(
                                  width: screenWidth * .05,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sanskriti School",
                                      style: TextStyle(
                                          color: MyColors.primaryColor,
                                          fontSize: screenWidth * .045),
                                    ),
                                    Text(
                                        "Dr.S Radhakrishnan Marg \n Chanakyapuri,New Delhi \n Delhi - 110021")
                                  ],
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: MyColors.primaryColor,
                          ),
                          Text(
                            "PERFORMANCE PROFILE",
                            style: TextStyle(fontSize: screenWidth * .04),
                          ),
                          Divider(
                            color: MyColors.primaryColor,
                          ),
                          Container(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  child: Icon(Icons.person),
                                  radius: 25,
                                ),
                                SizedBox(
                                  width: screenWidth * .025,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ayush Aswal",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: screenWidth * .04),
                                    ),
                                    Text("Bsc -IT")
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * .01,
                          ),
                          PerformanceprofileWidget(
                            contex: "Roll Number",
                            info: "1075",
                          ),Divider(),
                          PerformanceprofileWidget(
                            contex: "Date of Birth ",
                            info: "08-june-2002",
                          ),Divider(),
                          PerformanceprofileWidget(
                            contex: "Blood Group",
                            info: "AB+",
                          ),Divider(),
                          PerformanceprofileWidget(
                            contex: "Emergency Contact",
                            info: "987654321",
                          ),Divider(),
                          PerformanceprofileWidget(
                            contex: "Position in Class",
                            info: "Bsc IT ",
                          ),Divider(),
                          PerformanceprofileWidget(
                            contex: "Father's Name",
                            info: "Devendra Singh Aswal ",
                          ),Divider(),
                          PerformanceprofileWidget(
                            contex: "Mother's Name",
                            info: "Sunita Aswal",
                          ), SizedBox(height: screenHeight*.025,),
                          Divider(
                            color: MyColors.primaryColor,
                          ),
                          Text("ATTENDANCE"),
                          Divider(
                            color: MyColors.primaryColor,
                          ),
                          ReportcardattendanceWidget(
                            term: "Term 1",
                            days: "235/249 Days",
                          ),
                          ReportcardattendanceWidget(
                            term: "Term 2",
                            days: "235/249 Days",
                          ),
                          Divider(
                            color: MyColors.primaryColor,
                          ),
                          Text("PERFORMANCE PROFILE"),
                          Divider(
                            color: MyColors.primaryColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 10),
                            child: Column(
                              children: [
                                AcadmicperformancetableWidget(
                                  term: "Term 1",
                                ),
                                SizedBox(
                                  height: screenHeight * .025,
                                ),
                                AcadmicperformancetableWidget(
                                  term: "Term 2",
                                ),
                                SizedBox(
                                  height: screenHeight * .025,
                                ),
                                AcadmicperformancefinaltableWidget(),SizedBox(
                            height: screenHeight * .025,
                          ),TeacherremarksWidget()
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
