import 'package:academix/Theme/themecolor.dart';
import 'package:academix/widgets/noticeboard_widget/noticeboard_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoticeboardScreen extends StatefulWidget {
  const NoticeboardScreen({super.key});

  @override
  State<NoticeboardScreen> createState() => _NoticeboardScreenState();
}

class _NoticeboardScreenState extends State<NoticeboardScreen> {
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
                          GestureDetector(onTap: (){
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
                            "Notice Board",
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
                    width: screenWidth,
                    height: screenHeight,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,top: 30),
                      child: Container(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                NoticeboardWidget(
                                  colors: Colors.greenAccent[100],
                                  text:
                                      "School is going for \n vacation next \n month",
                                  date: "02 March 2020",
                                ),
                                SizedBox(
                                  height: screenHeight * .02,
                                ),
                                NoticeboardWidget(
                                  date: "10 March 2020",
                                  colors: Colors.red[100],
                                  text: "Parent-Teacher \n meeting on Friday",
                                ),

                                SizedBox(
                                  height: screenHeight * .02,
                                ),
                                NoticeboardWidget(
                                  date: "05 March 2020",
                                  colors: Colors.blue[100],
                                  text: "Exams start from \n next week",
                                ),

                                SizedBox(
                                  height: screenHeight * .02,
                                ),
                                NoticeboardWidget(
                                  colors: Colors.greenAccent[100],
                                  text:
                                      "School is going for \n vacation next \n month",
                                  date: "02 March 2020",
                                ),
                              ],
                            ), SizedBox(width: screenWidth*.025,),
                            Column(
                              children: [NoticeboardWidget(
                              date: "05 March 2020",
                              colors: Colors.blue[100],
                              text: "Exams start from \n next week",
                            ),SizedBox(
                              height: screenHeight * .02,
                            ),NoticeboardWidget(
                              colors: Colors.greenAccent[100],
                              text:
                              "School is going for \n vacation next \n month",
                              date: "02 March 2020",
                            ),SizedBox(
                              height: screenHeight * .02,
                            ),NoticeboardWidget(
                              date: "10 March 2020",
                              colors: Colors.red[100],
                              text: "Parent-Teacher \n meeting on Friday",
                            ),],)
                          ],
                        ),
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
