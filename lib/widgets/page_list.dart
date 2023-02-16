import 'package:climate_fintech_app/config/causes_list.dart';
import 'package:climate_fintech_app/models/company.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/company_list.dart';
import '../screens/view_donation_screen.dart';

class PageList extends StatelessWidget {
  static const routeName = '/PageList';
  const PageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06,
                vertical: MediaQuery.of(context).size.width * 0.2),
            child: ListView.builder(
              itemCount: causesList.length,
              itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () {
                    if (index == 5) {
                      Navigator.of(context)
                          .pushNamed(ViewDonationScreen.routeName);
                    } else {
                      Navigator.of(context).pushNamed(
                        CompanyList.routeName,
                        arguments: causesList[index].id,
                      );
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.025,
                    ),
                    height: MediaQuery.of(context).size.height * 0.098,
                    width: MediaQuery.of(context).size.width * 0.97,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: causesList[index].backColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02,
                            bottom: MediaQuery.of(context).size.height * 0.01,
                            top: MediaQuery.of(context).size.height * 0.01,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(18),
                            child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.18,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                child: Image.asset(causesList[index].img)),
                          ),
                        ),                
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.09,
                          width: MediaQuery.of(context).size.width * 0.55,
                          child: Center(
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                causesList[index].title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(
                                right:
                                    MediaQuery.of(context).size.width * 0.02),
                            child: InkWell(
                              onTap: (() {
                                if (index == 5) {
                                  Navigator.of(context)
                                      .pushNamed(ViewDonationScreen.routeName);
                                } else {
                                  Navigator.of(context).pushNamed(
                                    CompanyList.routeName,
                                    arguments: causesList[index].id,
                                  );
                                }
                              }),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.10,
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: causesList[index].frontColor,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            )));
  }
}
