import 'package:climate_fintech_app/config/colors.dart';
import 'package:climate_fintech_app/widgets/expanded_text_widget.dart';
import 'package:climate_fintech_app/widgets/read_less.dart';
import 'package:climate_fintech_app/widgets/read_more.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  bool clickCounter = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.green,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  //Close Icon
                  Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  //Company Logo
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/say_trees.png'),
                          )),
                    ),
                  ),
                ],
              ),
              //Details portion
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    //Text
                    Text(
                      'SAYTREES ENVIRONMENTAL TRUST',
                      style: TextStyle(
                          color: AppColor.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: 
                      clickCounter?
                      ReadMore()
                      :ReadLess(),
                    ),
                    //Read MOres
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          clickCounter = !clickCounter;
                        });
                      },
                      child: clickCounter
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Read More',
                                  style: TextStyle(
                                    color: AppColor.iconGreen,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: AppColor.iconGreen,
                                  size: 28,
                                )
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Read Less',
                                  style: TextStyle(
                                    color: AppColor.iconGreen,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_up,
                                  color: AppColor.iconGreen,
                                  size: 28,
                                ),
                                
                              ],
                            ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    //Containers
                    Container(
                      child: clickCounter
                          ? Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: AppColor.green,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.phone,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                          Text(
                                            'TELEPHONE',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          left: 10,
                                        ),
                                        child: Text(
                                          '+91 - 96635 77758\n+91 - 96635 77748\n+91 - 99102 98215\n(Northern India)',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                          Text(
                                            'ADDRESS',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          left: 10,
                                        ),
                                        child: Expanded(
                                          child: SingleChildScrollView(
                                            child: Text(
                                              'SayTrees,\nNo. 6, 1st cross, first floor,\nBasapura, Near Hosa Road Junction,\nBengaluru, Karnataka - 560100',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          top: 15,
                                          left: 10,
                                          right: 10,
                                          bottom: 10),
                                      decoration: BoxDecoration(
                                        color: AppColor.green,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.email,
                                            color: Colors.white,
                                            size: 25,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'EMAIL ADDRESS',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'info@saytrees.org',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        print('GO TO WEBSITE is pressed');
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: AppColor.green,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              'GO TO \nWEBSITE',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_outlined,
                                              color: Colors.white,
                                              size: 26,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          : Container(),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: ElevatedButton(
                          onPressed: (() {
                            print('Donate now is pressed');
                          }),
                          style: ElevatedButton.styleFrom(
                            primary: AppColor.iconGreen,
                          ),
                          child: Container(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              'DONATE NOW',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
