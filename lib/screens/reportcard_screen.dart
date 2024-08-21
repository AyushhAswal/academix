import 'package:academix/Theme/themecolor.dart';
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
                  height: screenHeight,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Class 7th (2015-16)",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * .4,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: MyColors.primaryColor,
                              )
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          Divider(),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          Row(
                            children: [
                              Text(
                                "Class 8th (2016-17)",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * .4,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: MyColors.primaryColor,
                              )
                            ],
                          ),SizedBox(
                            height: screenHeight * .02,
                          ),
                          Divider(),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          Row(
                            children: [
                              Text(
                                "Class 9th (2017-18)",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * .4,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: MyColors.primaryColor,
                              )
                            ],
                          ),SizedBox(
                            height: screenHeight * .02,
                          ),
                          Divider(),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          Row(
                            children: [
                              Text(
                                "Class 10th (2018-19)",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * .37,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: MyColors.primaryColor,
                              )
                            ],
                          ),SizedBox(
                            height: screenHeight * .02,
                          ),
                          Divider(),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          Row(
                            children: [
                              Text(
                                "Class 11th (2019-20)",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * .37,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: MyColors.primaryColor,
                              )
                            ],
                          ),SizedBox(
                            height: screenHeight * .02,
                          ),
                          Divider(),
                          SizedBox(
                            height: screenHeight * .02,
                          ),
                          Row(
                            children: [
                              Text(
                                "Class 12th (2020-21)",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * .37,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: MyColors.primaryColor,
                              )
                            ],
                          ), SizedBox(
                            height: screenHeight * .02,
                          ),
                          Divider(),
                        ],
                      ),
                    ),
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