import 'package:academix/screens/drawer_screen.dart';
import 'package:academix/theme/themecolor.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime today = DateTime.now();
  void _onDateSlected(DateTime day ,DateTime focusedDay){
    setState(() {
      today=day;
    });
  }

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
                          "Calendar",
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
                      child: TableCalendar(
                        focusedDay: today,
                        selectedDayPredicate: (day)=>isSameDay(day, today),
                        firstDay: DateTime.utc(2024),
                        lastDay: DateTime.utc(2030),
                        onDaySelected: _onDateSlected,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
