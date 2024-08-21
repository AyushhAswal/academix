import 'package:academix/Theme/themecolor.dart';
import 'package:academix/widgets/Reportcard_widgets/reportcardsection_widget.dart';
import 'package:flutter/material.dart';

class ReportcardScreen extends StatefulWidget {
  const ReportcardScreen({super.key});

  @override
  State<ReportcardScreen> createState() => _ReportcardScreenState();
}

class _ReportcardScreenState extends State<ReportcardScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold( backgroundColor: Colors.white,
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
                            "Report Card",
                            style: TextStyle(
                                fontSize: screenHeight * .025,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: screenWidth * .5,
                          ),
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

                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30, left: 20),
                      child: Column(
                        children: [
                          ReportcardsectionWidget(
                            text: "Class 7th (2015-16)",
                          ),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          Divider(),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          ReportcardsectionWidget(
                            text: "Class 8th (2016-17)",
                          ),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          Divider(),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          ReportcardsectionWidget(
                            text: "Class 9th (2017-18)",
                          ),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          Divider(),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          ReportcardsectionWidget(
                            text: "Class 10th (2018-19)",
                          ),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          Divider(),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          ReportcardsectionWidget(
                            text: "Class 11th (2019-20)",
                          ),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          Divider(),
                          SizedBox(
                            height: screenHeight * .02,
                          ),

                          ReportcardsectionWidget(
                            text: "Class 12th (2020-21)",
                          ),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          Divider(),
                          SizedBox(
                            height: screenHeight * .02,
                          )
                        ],
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
