import 'package:climate_fintech_app/widgets/view_donation.dart';
import 'package:flutter/material.dart';

import '../screens/company_list.dart';
import '../screens/view_donation_screen.dart';
import '/config/causes_list.dart';

class PageGrid extends StatefulWidget {
  const PageGrid({super.key});

  @override
  State<PageGrid> createState() => _PageGridState();
}

class _PageGridState extends State<PageGrid> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // color: Colors.red,
        margin: const EdgeInsets.all(10),
        child: GridView.builder(
          // physics: const NeverScrollableScrollPhysics(),
          itemCount: causesList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                if (index == 5) {
                  Navigator.of(context).pushNamed(ViewDonationScreen.routeName);
                } else {
                  Navigator.of(context).pushNamed(
                    CompanyList.routeName,
                    arguments: causesList[index].id,
                  );
                }
              },
              child: Container(
                margin: const EdgeInsets.all(15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            causesList[index].img,
                          ),
                          fit: BoxFit.fill),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.40),
                      ),
                      child: Center(
                        child: Text(
                          causesList[index].title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
