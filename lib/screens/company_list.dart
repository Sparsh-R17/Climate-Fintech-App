import 'package:flutter/material.dart';

import '../config/company_data.dart';
import '../models/company.dart';
import '/config/colors.dart';

class CompanyList extends StatefulWidget {
  static const routeName = '/company-list';
  const CompanyList({super.key});

  @override
  State<CompanyList> createState() => _CompanyListState();
}

class _CompanyListState extends State<CompanyList> {
  int _selectedList = -1;
  List<Company>? displayedCompanies;

  @override
  Widget build(BuildContext context) {
    final companyId = ModalRoute.of(context)?.settings.arguments as String;

    displayedCompanies = companyData
        .where(
          (element) => element.id == companyId,
        )
        .toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: displayedCompanies![0].color,
        title: const Text(
          'Forest Preserver StartUps/NGOs',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      //
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.01,
          // vertical: MediaQuery.of(context).size.height * 0.03,
        ),
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width * 0.98,
        child: ListView.builder(
          itemCount: displayedCompanies!.length,
          itemBuilder: (context, index) {
            return _selectedList == index
                ? Column(
                    children: [
                      listTitleDesign(context, index),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.18,
                        width: MediaQuery.of(context).size.width * 0.97,
                        decoration: const BoxDecoration(
                          color: AppColor.green,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.02,
                                vertical:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              child: const Text(
                                'To reduce pollution and support farmers and connect people with nature in urban spaces thus fight climate crises.',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width * 0.03,
                              ),
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  splashFactory: NoSplash.splashFactory,
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                ),
                                child: const Text('Know More'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : listTitleDesign(context, index);
          },
        ),
      ),
    );
  }

  Container listTitleDesign(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.025,
      ),
      height: MediaQuery.of(context).size.height * 0.098,
      width: MediaQuery.of(context).size.width * 0.97,
      decoration: BoxDecoration(
        borderRadius: _selectedList == index
            ? const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              )
            : BorderRadius.circular(15),
        color: AppColor.compGreen,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.03,
              top: MediaQuery.of(context).size.height * 0.01,
            ),
            child: Image.asset(
              'assets/images/saytrees_forestcomp_icon.png',
              alignment: Alignment.center,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
            width: MediaQuery.of(context).size.width * 0.55,
            child: const Center(
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  'SayTrees Environmental Trust',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
          //Expand Icon
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 24, 25, 23),
              child: InkWell(
                onTap: () {
                  setState(() {
                    // _expandClick = !_expandClick;
                    if (_selectedList == index) {
                      _selectedList = -1;
                    } else {
                      _selectedList = index;
                    }
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.10,
                  height: MediaQuery.of(context).size.height * 0.04,
                  decoration: BoxDecoration(
                    color: const Color(0x9CD2E6CD),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(
                    _selectedList == index
                        ? Icons.expand_less_sharp
                        : Icons.expand_more_sharp,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
