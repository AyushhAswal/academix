import 'package:academix/Theme/themecolor.dart';
import 'package:flutter/material.dart';

class ExpansiontileWidget extends StatefulWidget {
  final String  month ;
  final String amount;
  const ExpansiontileWidget({super.key,required this .month, required this .amount});

  @override
  State<ExpansiontileWidget> createState() => _ExpansiontileWidgetState();
}

class _ExpansiontileWidgetState extends State<ExpansiontileWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: MyColors.feedetails,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Theme(
              data: ThemeData(
                dividerColor: Colors.transparent, // Remove the divider line
              ),
              child: ExpansionTile(
                title: Text(
                  widget.month,
                  style: TextStyle(color: Colors.black45,),
                ),
                subtitle: Row(
                  children: [
                    SizedBox(width: 8), // Space between badge and amount
                    Text(
                      '\u{20B9}' + widget.amount,
                      style: TextStyle(
                        fontSize: screenWidth * .05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * .02,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'Paid',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                // Set the color of the indicator (arrow)
                iconColor: MyColors.secondaryColor,
                // Arrow color
                collapsedIconColor: MyColors.secondaryColor,
                // Arrow color when collapsed
                children: <Widget>[
                  Container(
                      padding: const EdgeInsets.all(24),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(crossAxisAlignment:  CrossAxisAlignment.start,
                                children: [
                                  Text("Total fee"),
                                  Text("Extra fee"),
                                  Text("Late Charges"),
                                  Text("Discount(20%)"),
                                  Text("Paid Fee",style: TextStyle(fontWeight: FontWeight.bold),),
                                ],

                              ), SizedBox(width:  screenWidth * .43,),
                              Column(crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("\u{20B9}16,600"),
                                  Text("\u{20B9}20,000"),
                                  Text("\u{20B9} 600"),
                                  Text("\u{20B9} -500"),
                                  Text("\u{20B9} 16,600",style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              )
                            ],
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
