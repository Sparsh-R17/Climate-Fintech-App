// & BackUp Plan

import 'package:flutter/material.dart';

import '../config/colors.dart';

class CompanyInfo extends StatelessWidget {
  final Color buttonColor;
  final Color pageColor;
  final List<String> phoneNumbers;
  final List<String> address;
  final String email;
  final String link;

  const CompanyInfo({
    Key? key,
    required bool clickCounter,
    required this.buttonColor,
    required this.pageColor,
    required this.phoneNumbers,
    required this.address,
    required this.email,
    required this.link,
  })  : _clickCounter = clickCounter,
        super(key: key);

  final bool _clickCounter;

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    return Visibility(
      visible: !_clickCounter,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: pageWidth * 0.51,
                height: pageHeight * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: pageColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: pageWidth * 0.03,
                        top: pageHeight * 0.005,
                      ),
                      // color: Colors.teal,
                      width: pageWidth * 0.18,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.phone,
                            size: 20,
                            color: Color.fromARGB(255, 73, 72, 72),
                          ),
                          FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              'Phone',
                              style: TextStyle(
                                color: Color.fromARGB(255, 73, 72, 72),
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                          left: pageWidth * 0.06,
                          top: pageHeight * 0.003,
                        ),
                        // height: pageHeight * 0.07,
                        width: pageWidth * 0.45,
                        // color: Colors.red,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: phoneNumbers.map(((e) {
                            return FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                e,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 73, 72, 72),
                                ),
                              ),
                            );
                          })).toList(),
                        )),
                    Container(
                      margin: EdgeInsets.only(
                        left: pageWidth * 0.03,
                        top: pageHeight * 0.005,
                      ),
                      // color: Colors.teal,
                      width: pageWidth * 0.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.location_on_outlined,
                            size: 20,
                            color: Color.fromARGB(255, 73, 72, 72),
                          ),
                          FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              'Address',
                              style: TextStyle(
                                color: Color.fromARGB(255, 73, 72, 72),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: pageWidth * 0.05,
                        top: pageHeight * 0.003,
                      ),
                      height: pageHeight * 0.08,
                      width: pageWidth * 0.45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: address.map(((e) {
                          return FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text(
                              e,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 73, 72, 72),
                              ),
                            ),
                          );
                        })).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: pageWidth * 0.03,
              ),
              Column(
                children: [
                  Container(
                    width: pageWidth * 0.28,
                    height: pageHeight * 0.095,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: pageColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: pageHeight * 0.005,
                        ),
                        const Icon(
                          Icons.email_outlined,
                          color: Color.fromARGB(255, 73, 72, 72),
                        ),
                        SizedBox(
                          height: pageHeight * 0.005,
                        ),
                        SizedBox(
                          width: pageWidth * 0.24,
                          child: const FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text(
                              'Email Address',
                              style: TextStyle(
                                color: Color.fromARGB(255, 73, 72, 72),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: pageHeight * 0.003,
                        ),
                        SizedBox(
                          width: pageWidth * 0.25,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text(
                              email,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 73, 72, 72)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: pageHeight * 0.01,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: pageWidth * 0.28,
                      height: pageHeight * 0.095,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: pageColor,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: pageWidth * 0.16,
                            margin: EdgeInsets.only(left: pageWidth * 0.02),
                            // color: Colors.red,
                            child: const Text(
                              'GO TO WEBSITE',
                              style: TextStyle(
                                color: Color.fromARGB(255, 73, 72, 72),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_circle_right_outlined,
                            color: Color.fromARGB(255, 73, 72, 72),
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(
                top: pageHeight * 0.02, bottom: pageHeight * 0.02),
            width: pageWidth * 0.82,
            height: pageHeight * 0.05,
            child: MaterialButton(
              onPressed: () {},
              color: buttonColor,
              textColor: Colors.white,
              child: const Text(
                'DONATE NOW',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
