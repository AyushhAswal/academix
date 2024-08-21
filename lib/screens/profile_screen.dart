import 'package:academix/Theme/themecolor.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView( physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: screenHeight / 2,
                  color: Colors.white,
                ),
                Container(
                  height: screenHeight / 2,
                  decoration: BoxDecoration(
                    color: MyColors.primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 45, left: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                            "Profile ",
                            style: TextStyle(
                                fontSize: screenHeight * .025,
                                color: Colors.white),
                          ),
                          Container(
                            width: screenWidth * .4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  child: Icon(Icons.person),
                                ),
                                SizedBox(
                                  height: screenHeight * .03,
                                ),
                                Text(
                                  "Ayush Aswal",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: screenHeight * .001,
                                ),
                                Text(
                                  "Bsc -IT ",
                                  style: TextStyle(color: Colors.white54),
                                )
                              ],
                            ),
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: [
                        Container(
                            child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Roll number",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenHeight * .02,
                                ),
                                Text(
                                  "Date of Birth",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenHeight * .02,
                                ),
                                Text(
                                  "Blood Group",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenHeight * .02,
                                ),
                                Text(
                                  "Emergency Number",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenHeight * .02,
                                ),
                                Text(
                                  "Position in Class",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenHeight * .02,
                                ),
                                Text(
                                  "Father's Name",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenHeight * .02,
                                ),
                                Text(
                                  "Mother's Name",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ), SizedBox(width: screenWidth *.2,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1075",
                                  style: TextStyle(color: MyColors.primaryColor),
                                ),
                                SizedBox(
                                  height: screenHeight * .02,
                                ),
                                Text(
                                  "8 june-2002",
                                  style: TextStyle(color: MyColors.primaryColor),
                                ),
                                SizedBox(
                                  height: screenHeight * .02,
                                ),
                                Text(
                                  "AB+",
                                  style: TextStyle(color: MyColors.primaryColor),
                                ),
                                SizedBox(
                                  height: screenHeight * .02,
                                ),
                                Text(
                                  "987654321",
                                  style: TextStyle(color: MyColors.primaryColor),
                                ),
                                SizedBox(
                                  height: screenHeight * .02,
                                ),
                                Text(
                                  "BSC- IT ",
                                  style: TextStyle(color: MyColors.primaryColor),
                                ),
                                SizedBox(
                                  height: screenHeight * .02,
                                ),
                                Text(
                                  "Devendra Singh Aswal",
                                  style: TextStyle(color: MyColors.primaryColor),
                                ),
                                SizedBox(
                                  height: screenHeight * .02,
                                ),
                                Text(
                                  "Sunit Aswal",
                                  style: TextStyle(color: MyColors.primaryColor),
                                ),
                                SizedBox(
                                  height: screenHeight * .02,
                                ),



                              ],
                            )
                          ],
                        )),SizedBox(height: screenHeight *.04,), Container(
                          decoration: BoxDecoration(
                              color: MyColors.secondaryColor,
                              borderRadius: BorderRadiusDirectional.circular(70)),
                          height: screenHeight * .054,
                          width: screenWidth,
                          child: Center(
                              child: Text(
                                "Ask for Update",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ],
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
