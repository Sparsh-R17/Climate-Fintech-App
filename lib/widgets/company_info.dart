import 'package:flutter/material.dart';

import 'payment_bottom_sheet.dart';

class CompanyInfo extends StatefulWidget {
  final Color buttonColor;
  final Color pageColor;
  final List<String> phoneNumbers;
  final List<String> address;
  final String email;
  final String link;
  final bool _clickCounter;

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

  @override
  State<CompanyInfo> createState() => _CompanyInfoState();
}

class _CompanyInfoState extends State<CompanyInfo> {
  bool showMobile = false;
  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    return Visibility(
      visible: !widget._clickCounter,
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
                  color: widget.pageColor,
                ),
                child: showMobile ? viewContact() : viewAddress(),
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
                      color: widget.pageColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: pageHeight * 0.004,
                        ),
                        InkWell(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                behavior: SnackBarBehavior.floating,
                                // showCloseIcon: true,
                                // closeIconColor: Colors.white,
                                content: Text(
                                  'E-mail :- ${widget.email}',
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: pageWidth * 0.28,
                            height: pageHeight * 0.09,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: widget.pageColor,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: pageWidth * 0.16,
                                  padding: EdgeInsets.only(
                                    left: pageWidth * 0.01,
                                  ),
                                  margin:
                                      EdgeInsets.only(left: pageWidth * 0.02),
                                  child: const Text(
                                    'VIEW MAIL',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 73, 72, 72),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.mail_outline,
                                  color: Color.fromARGB(255, 73, 72, 72),
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: pageHeight * 0.001,
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
                        color: widget.pageColor,
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
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
                top: pageHeight * 0.02, bottom: pageHeight * 0.02),
            width: pageWidth * 0.82,
            height: pageHeight * 0.03,
            child: MaterialButton(
              onPressed: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  enableDrag: true,
                  context: context,
                  builder: (context) {
                    return const AmountBottomSheet();
                  },
                );
              },
              color: widget.buttonColor,
              textColor: const Color.fromARGB(255, 73, 72, 72),
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

  Widget viewAddress() {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: pageWidth * 0.02,
            top: pageHeight * 0.01,
          ),
          child: Row(
            children: const [
              Icon(
                Icons.location_on_outlined,
                size: 23,
                color: Color.fromARGB(255, 73, 72, 72),
              ),
              Text(
                ' Address',
                style: TextStyle(
                  color: Color.fromARGB(255, 73, 72, 72),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: pageWidth * 0.05,
            top: pageHeight * 0.006,
            right: pageWidth * 0.035,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.address.map((e) {
              return Text(
                e,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 73, 72, 72),
                ),
              );
            }).toList(),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            setState(() {
              showMobile = !showMobile;
            });
          },
          child: Padding(
            padding: EdgeInsets.only(
              left: pageWidth * 0.13,
              bottom: pageHeight * 0.01,
            ),
            child: const Text(
              'Tap to view contact',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget viewContact() {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: pageWidth * 0.02,
            top: pageHeight * 0.01,
          ),
          child: Row(
            children: const [
              Icon(
                Icons.phone,
                size: 23,
                color: Color.fromARGB(255, 73, 72, 72),
              ),
              Text(
                ' Phone',
                style: TextStyle(
                  color: Color.fromARGB(255, 73, 72, 72),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: pageWidth * 0.035,
            top: pageHeight * 0.012,
            right: pageWidth * 0.035,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.phoneNumbers.map((e) {
              return Padding(
                padding: EdgeInsets.only(top: pageHeight * 0.005),
                child: Text(
                  e,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 73, 72, 72),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            setState(() {
              showMobile = !showMobile;
            });
          },
          child: Padding(
            padding: EdgeInsets.only(
              top: pageHeight * 0.03,
              left: pageWidth * 0.13,
              bottom: pageHeight * 0.01,
            ),
            child: const Text(
              'Tap to view address',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
