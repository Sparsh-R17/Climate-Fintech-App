import 'package:flutter/material.dart';

import '/config/colors.dart';

class CompanyList extends StatefulWidget {
  static const routeName = '/company-list';
  const CompanyList({super.key});

  @override
  State<CompanyList> createState() => _CompanyListState();
}

class _CompanyListState extends State<CompanyList> {
  bool _expandClick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.compGreen,
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
      body: Center(
        child: _expandClick
            ? Column(
                children: [
                  listTitleDesign(context),
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
                            vertical: MediaQuery.of(context).size.height * 0.02,
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
            : listTitleDesign(context),
      ),
    );
  }

  Container listTitleDesign(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.098,
      width: MediaQuery.of(context).size.width * 0.97,
      decoration: BoxDecoration(
        borderRadius: _expandClick
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
                    _expandClick = !_expandClick;
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
                    _expandClick
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
