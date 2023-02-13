// & BackUp Plan

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/models/company.dart';
import '/config/company_data.dart';
import '../widgets/company_info.dart';

class CompanyInfoScreen extends StatefulWidget {
  static const routeName = '/company-info-screen';
  const CompanyInfoScreen({super.key});

  @override
  State<CompanyInfoScreen> createState() => _CompanyInfoScreenState();
}

class _CompanyInfoScreenState extends State<CompanyInfoScreen> {
  List<Company>? displayedCompaniesDetails;

  bool _clickCounter = false;
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as String;
    displayedCompaniesDetails = companyData
        .where((element) => element.companyTag == routeArgs)
        .toList();
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: displayedCompaniesDetails![0].color,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: MaterialButton(
                elevation: 0,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                color: Colors.white30,
                textColor: const Color.fromARGB(255, 73, 72, 72),
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.close_outlined,
                  size: 24,
                ),
              ),
            ),
            SizedBox(
              height: pageHeight * 0.01,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: pageHeight * 0.2,
                width: pageWidth * 0.6,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(displayedCompaniesDetails![0].img),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              height: pageHeight * 0.63,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: pageHeight * 0.02,
                      ),
                      Center(
                        child: Text(
                          displayedCompaniesDetails![0].name,
                          style: GoogleFonts.markoOne(
                            color: displayedCompaniesDetails![0].buttonColor,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: pageWidth * 0.04,
                          right: pageWidth * 0.04,
                          top: pageHeight * 0.01,
                        ),
                        child: _clickCounter
                            ? Container(
                                constraints: BoxConstraints(
                                  maxHeight:
                                      MediaQuery.of(context).size.height * 0.5,
                                ),
                                child: SingleChildScrollView(
                                  child: Text(
                                    displayedCompaniesDetails![0].info,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              )
                            : SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.21,
                                child: Text(
                                  displayedCompaniesDetails![0].info,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: pageWidth * 0.7,
                        ),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _clickCounter = !_clickCounter;
                            });
                          },
                          style: ButtonStyle(
                            splashFactory: NoSplash.splashFactory,
                            foregroundColor: MaterialStateProperty.all(
                                displayedCompaniesDetails![0].buttonColor),
                          ),
                          child: Text(
                            _clickCounter ? 'Read Less' : 'Read More',
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                      CompanyInfo(
                        clickCounter: _clickCounter,
                        buttonColor: displayedCompaniesDetails![0].buttonColor,
                        pageColor: displayedCompaniesDetails![0].color,
                        email: displayedCompaniesDetails![0].email,
                        phoneNumbers: displayedCompaniesDetails![0].mobile,
                        address: displayedCompaniesDetails![0].address,
                        link: displayedCompaniesDetails![0].website,
                      ),
                      SizedBox(
                        height: pageHeight * 0.01,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
