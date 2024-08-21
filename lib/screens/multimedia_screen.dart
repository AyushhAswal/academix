import 'package:academix/theme/themecolor.dart';
import 'package:academix/widgets/multimediascreen_widget/multimedia_widget.dart';
import 'package:academix/widgets/multimediascreen_widget/multimediavideo_widget.dart';

import 'package:flutter/material.dart';

class MultimediaScreen extends StatefulWidget {
  const MultimediaScreen({super.key});

  @override
  State<MultimediaScreen> createState() => _MultimediaScreenState();
}

class _MultimediaScreenState extends State<MultimediaScreen> {
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
                          GestureDetector( onTap:  (){
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
                            "Multimedia",
                            style: TextStyle(
                                fontSize: screenHeight * .025,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: screenWidth * .5,
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white,
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
                  child: DefaultTabController(
                    length: 5,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 10),
                            child: TabBar(
                              labelStyle:
                                  TextStyle(fontSize: screenWidth * .04),
                              tabs: [
                                Tab(
                                  text: "All",
                                ),
                                Tab(text: "Video"),
                                Tab(text: "Images"),
                                Tab(text: "Documents"),
                                Tab(text: "Links"),
                              ],
                              indicatorColor: MyColors.secondaryColor,
                              labelColor: MyColors.secondaryColor,
                              unselectedLabelColor: MyColors.primaryColor,
                              dividerColor: Colors.transparent,
                              isScrollable: true,
                              physics: BouncingScrollPhysics(),
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                // For All section
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SingleChildScrollView(
                                    physics: BouncingScrollPhysics(),
                                    child: Column(
                                      children: [
                                        MultimediaWidget(
                                          format: "PDF",
                                          subject: "Social Science Syllabus",
                                          context: "Syllabus for 2024 Batch",
                                          size: "12 Pages/360KB",
                                        ),
                                        SizedBox(
                                          height: screenHeight * .02,
                                        ),
                                        MultimediavideoWidget(
                                          context:
                                              "Chapter-wise MCQs & Answer ",
                                          type: "Live Stream Capture",
                                        ),
                                        SizedBox(
                                          height: screenHeight * .02,
                                        ),
                                        MultimediaWidget(
                                          format: "ZIP",
                                          subject:
                                              "Improvement In Food Resource",
                                          context: "Syllabus for 2024 Batch",
                                          size: "12 Pages/360KB",
                                        ),
                                        SizedBox(
                                          height: screenHeight * .02,
                                        ),
                                        MultimediaWidget(
                                          format: "PDF",
                                          subject: "Exemplar Solution Class 10",
                                          context: "Syllabus for 2024 Batch",
                                          size: "12 Pages/360KB",
                                        ),
                                        SizedBox(
                                          height: screenHeight * .02,
                                        ),
                                        MultimediaWidget(
                                          format: "ZIP",
                                          subject: "Preparation tips",
                                          context: "Syllabus for 2024 Batch",
                                          size: "12 Pages/360KB",
                                        ),
                                        SizedBox(
                                          height: screenHeight * .02,
                                        ),
                                        MultimediaWidget(
                                          format: "PDF",
                                          subject: "Social Science Syllabus",
                                          context: "Syllabus for 2024 Batch",
                                          size: "12 Pages/360KB",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                //Video Section
                                SingleChildScrollView(
                                  physics: BouncingScrollPhysics(),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(children: [
                                      MultimediavideoWidget(
                                        context: "Chapter-wise MCQs & Answer ",
                                        type: "Live Stream Capture",
                                      ),
                                      SizedBox(
                                        height: screenHeight * .02,
                                      ),
                                      MultimediavideoWidget(
                                        context: "Chapter-wise MCQs & Answer ",
                                        type: "Live Stream Capture",
                                      ),
                                      SizedBox(
                                        height: screenHeight * .02,
                                      ),
                                      MultimediavideoWidget(
                                        context: "Chapter-wise MCQs & Answer ",
                                        type: "Live Stream Capture",
                                      ),
                                      SizedBox(
                                        height: screenHeight * .02,
                                      ),
                                      MultimediavideoWidget(
                                        context: "Chapter-wise MCQs & Answer ",
                                        type: "Live Stream Capture",
                                      ),
                                    ]),
                                  ),
                                ),

                                //Image section
                                SingleChildScrollView(
                                  physics: BouncingScrollPhysics(),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(children: [
                                      MultimediaWidget(
                                        format: "ZIP",
                                        subject: "Improvement In Food Resource",
                                        context: "Syllabus for 2024 Batch",
                                        size: "12 Pages/360KB",
                                      ),
                                      SizedBox(
                                        height: screenHeight * .02,
                                      ),
                                      MultimediaWidget(
                                        format: "PDF",
                                        subject: "Exemplar Solution Class 10",
                                        context: "Syllabus for 2024 Batch",
                                        size: "12 Pages/360KB",
                                      ),
                                      SizedBox(
                                        height: screenHeight * .02,
                                      ),
                                      MultimediaWidget(
                                        format: "ZIP",
                                        subject: "Preparation tips",
                                        context: "Syllabus for 2024 Batch",
                                        size: "12 Pages/360KB",
                                      ),
                                    ]),
                                  ),
                                ),

                                // Documents section
                                SingleChildScrollView(
                                  physics: BouncingScrollPhysics(),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(children: [
                                      MultimediaWidget(
                                        format: "ZIP",
                                        subject: "Improvement In Food Resource",
                                        context: "Syllabus for 2024 Batch",
                                        size: "12 Pages/360KB",
                                      ),
                                      SizedBox(
                                        height: screenHeight * .02,
                                      ),
                                      MultimediaWidget(
                                        format: "PDF",
                                        subject: "Exemplar Solution Class 10",
                                        context: "Syllabus for 2024 Batch",
                                        size: "12 Pages/360KB",
                                      ),
                                      SizedBox(
                                        height: screenHeight * .02,
                                      ),
                                      MultimediaWidget(
                                        format: "ZIP",
                                        subject: "Preparation tips",
                                        context: "Syllabus for 2024 Batch",
                                        size: "12 Pages/360KB",
                                      ),
                                    ]),
                                  ),
                                ),
                                // Links section
                                SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(children: [
                                      MultimediaWidget(
                                        format: "ZIP",
                                        subject: "Improvement In Food Resource",
                                        context: "Syllabus for 2024 Batch",
                                        size: "12 Pages/360KB",
                                      ),
                                      SizedBox(
                                        height: screenHeight * .02,
                                      ),
                                      MultimediaWidget(
                                        format: "PDF",
                                        subject: "Exemplar Solution Class 10",
                                        context: "Syllabus for 2024 Batch",
                                        size: "12 Pages/360KB",
                                      ),
                                      SizedBox(
                                        height: screenHeight * .02,
                                      ),
                                      MultimediaWidget(
                                        format: "ZIP",
                                        subject: "Preparation tips",
                                        context: "Syllabus for 2024 Batch",
                                        size: "12 Pages/360KB",
                                      ),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
