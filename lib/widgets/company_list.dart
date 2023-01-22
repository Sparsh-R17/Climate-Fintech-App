import 'package:climate_fintech_app/config/colors.dart';
import 'package:flutter/material.dart';

class CompanyList extends StatelessWidget {
  const CompanyList({super.key});

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
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 54, 18, 54),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.098,
                width: MediaQuery.of(context).size.width * 0.97,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.compGreen),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(7, 6, 0, 6),
                      child: Image.asset(
                        'assets/images/saytrees_forestcomp_icon.png',
                        alignment: Alignment.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 24, 0, 23),
                      child: Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * 0.38,
                          child: const Text(
                            'SayTrees Environmental Trust',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(20, 24, 25, 23),
                        child: InkWell(
                          onTap: () {
                            // Container(
                            //   height: MediaQuery.of(context).size.height * 0.23,
                            //   width: MediaQuery.of(context).size.width * 0.89,
                            //   decoration: const BoxDecoration(
                            //     color: AppColor.compAccentGreen,
                            //     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))
                            //   ),
                            // );
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.10,
                            height: MediaQuery.of(context).size.height * 0.04,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(210, 230, 205, 100),
                                borderRadius: BorderRadius.circular(30)),
                            child: const Icon(
                              Icons.expand_more_sharp,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}
