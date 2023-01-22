import 'package:flutter/material.dart';

import '../config/colors.dart';

class CompanyInfo extends StatelessWidget {
  const CompanyInfo({
    Key? key,
    required bool clickCounter,
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
                height: pageHeight * 0.19,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColor.green,
                ),
              ),
              SizedBox(
                width: pageWidth * 0.03,
              ),
              Column(
                children: [
                  Container(
                    width: pageWidth * 0.28,
                    height: pageHeight * 0.085,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColor.green,
                    ),
                  ),
                  SizedBox(
                    height: pageHeight * 0.02,
                  ),
                  Container(
                    width: pageWidth * 0.28,
                    height: pageHeight * 0.085,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColor.green,
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(
                top: pageHeight * 0.01, bottom: pageHeight * 0.02),
            width: pageWidth * 0.82,
            height: pageHeight * 0.05,
            child: MaterialButton(
              onPressed: () {},
              color: AppColor.iconGreen,
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
