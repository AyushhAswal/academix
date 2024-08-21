import 'package:academix/Theme/themecolor.dart';
import 'package:flutter/material.dart';

class AcademicyearScreen extends StatefulWidget {
  const AcademicyearScreen({super.key});

  @override
  State<AcademicyearScreen> createState() => _AcademicyearScreenState();
}

class _AcademicyearScreenState extends State<AcademicyearScreen> {
  // Track selected checkboxes
  bool isSelected2018 = false;
  bool isSelected2019 = false;
  bool isSelected2020 = false;

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
                          "Select Academic Year ",
                          style: TextStyle(
                            fontSize: screenHeight * .025,
                            color: Colors.white,
                          ),
                        )
                      ],
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CheckboxListTile(
                        title: Text(
                          "2018-19",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        value: isSelected2018,
                        onChanged: (bool? value) {
                          setState(() {
                            isSelected2018 = value!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                        // Position checkbox on the left
                        shape: CircleBorder(), // Make the checkbox circular
                      ),
                      Divider(),
                      CheckboxListTile(
                        title: Text("2019-20",style: TextStyle(fontWeight: FontWeight.bold),),
                        value: isSelected2019,
                        onChanged: (bool? value) {
                          setState(() {
                            isSelected2019 = value!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                        // Position checkbox on the left
                        shape: CircleBorder(), // Make the checkbox circular
                      ),
                      Divider(),
                      CheckboxListTile(
                        title: Text("2020-21",style: TextStyle(fontWeight: FontWeight.bold),),
                        value: isSelected2020,
                        onChanged: (bool? value) {
                          setState(() {
                            isSelected2020 = value!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                        // Position checkbox on the left
                        shape: CircleBorder(), // Make the checkbox circular
                      ),
                      Divider(),
                      SizedBox(height: screenHeight * .5),
                      Container(
                        decoration: BoxDecoration(
                          color: MyColors.secondaryColor,
                          borderRadius: BorderRadiusDirectional.circular(70),
                        ),
                        height: screenHeight * .054,
                        width: screenWidth,
                        child: const Center(
                          child: Text(
                            "Update",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
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
