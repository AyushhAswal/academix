import 'package:academix/Theme/themecolor.dart';
import 'package:academix/widgets/feedetailsscreen_widget/expansiontile_widget.dart';
import 'package:academix/widgets/feedetailsscreen_widget/expansiontile_widgetnotpaid.dart';
import 'package:academix/widgets/feedetailsscreen_widget/expansiontile_widgetpending .dart';
import 'package:flutter/material.dart';

class FeedetailsScreen extends StatefulWidget {
  const FeedetailsScreen({super.key});

  @override
  State<FeedetailsScreen> createState() => _FeedetailsScreenState();
}

class _FeedetailsScreenState extends State<FeedetailsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          // Top Bar
          Container(
            child: Stack(
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
                          onTap: () => Navigator.pop(context),
                          child: Icon(Icons.arrow_back, color: Colors.white),
                        ),
                        SizedBox(width: screenWidth * 0.025),
                        Text(
                          "Fee Details",
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
          ),

          // Body Part
          Expanded(
            child: Stack(
              children: [
                Container(
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
                  child: DefaultTabController(
                    length: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: TabBar(
                            tabs: [
                              Tab(text: "School Fees"),
                              Tab(text: "Exam Fees"),
                              Tab(text: "Activity Fees"),
                              Tab(text: "Others"),
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
                              //School Fee Section
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    ExpansiontileWidget(
                                      month: "School Fee for January",
                                      amount: "16,600",
                                    ),
                                    ExpansiontileWidgetpending(month: "School Fee for December", amount: "14,500"),
                                    ExpansiontileWidget(
                                        month: "School Fee for November",
                                        amount: "16,500"),
                                    ExpansiontileWidgetNotpaid(
                                        month: "School Fee for October",
                                        amount: "14,500"),
                                    ExpansiontileWidget(
                                        month: "School Fee for September",
                                        amount: "14,500"),
                                    ExpansiontileWidget(
                                        month: "School Fee for August",
                                        amount: "14,500"),
                                    ExpansiontileWidget(
                                        month: "School Fee for September",
                                        amount: "14,500"),
                                    ExpansiontileWidget(
                                        month: "School Fee for July",
                                        amount: "14,500")
                                  ],
                                ),
                              ), //Exam Fee section
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    ExpansiontileWidget(
                                      month: "Exams Fee",
                                      amount: "16,600",
                                    ),
                                    ExpansiontileWidget(
                                      month: "Exams Fee",
                                      amount: "14,500",
                                    ),
                                    ExpansiontileWidget(
                                        month: "Exams Fee", amount: "16,500"),
                                    ExpansiontileWidget(
                                        month: "Exams Fee", amount: "14,500"),
                                    ExpansiontileWidget(
                                        month: "Exams Fee", amount: "14,500"),
                                    ExpansiontileWidget(
                                        month: "Exams Fee", amount: "14,500"),
                                    ExpansiontileWidget(
                                        month: "Exams Fee", amount: "14,500"),
                                    ExpansiontileWidget(
                                        month: "Exams Fee", amount: "14,500")
                                  ],
                                ),
                              ), // Activity Fee Section
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    ExpansiontileWidget(
                                      month: "Activity Fee ",
                                      amount: "16,600",
                                    ),
                                    ExpansiontileWidget(
                                      month: "Activity Fee ",
                                      amount: "14,500",
                                    ),
                                    ExpansiontileWidget(
                                        month: "Activity Fee ", amount: "16,500"),
                                    ExpansiontileWidget(
                                        month: "Activity Fee ", amount: "14,500"),
                                    ExpansiontileWidget(
                                        month: "Activity Fee ", amount: "14,500"),
                                    ExpansiontileWidget(
                                        month: "Activity Fee ", amount: "14,500"),
                                    ExpansiontileWidget(
                                        month: "Activity Fee ", amount: "14,500"),
                                    ExpansiontileWidget(
                                        month: "Activity Fee ", amount: "14,500")
                                  ],
                                ),
                              ), // Other fee Section
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    ExpansiontileWidget(
                                      month: "Other fee",
                                      amount: "16,600",
                                    ),
                                    ExpansiontileWidget(
                                      month: "Other fee",
                                      amount: "14,500",
                                    ),
                                    ExpansiontileWidget(
                                        month: "Other fee", amount: "16,500"),
                                    ExpansiontileWidget(
                                        month: "Other fee", amount: "14,500"),
                                    ExpansiontileWidget(
                                        month: "Other fee", amount: "14,500"),
                                    ExpansiontileWidget(
                                        month: "Other fee", amount: "14,500"),
                                    ExpansiontileWidget(
                                        month: "Other fee", amount: "14,500"),
                                    ExpansiontileWidget(
                                        month: "Other fee", amount: "14,500")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
