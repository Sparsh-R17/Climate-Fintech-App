import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
          physics: const NeverScrollableScrollPhysics(),
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
              // child: GridTile(
              //   child: Image.asset('assets/images/png/animal_grid.png'),
              // ),
              // child: Container(
              //   color: Colors.red,
              //   margin: const EdgeInsets.all(15),
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.circular(20),
              //     child: Container(
              //       decoration: BoxDecoration(
              //         image: DecorationImage(
              //             image: AssetImage(
              //               causesList[index].img,
              //             ),
              //             fit: BoxFit.fill),
              //       ),
              //       child: Container(
              //         decoration: BoxDecoration(
              //           color: Colors.black.withOpacity(0.40),
              //         ),
              //         child: Center(
              //           child: Text(
              //             causesList[index].title,
              //             style: const TextStyle(
              //               color: Colors.white,
              //               fontStyle: FontStyle.italic,
              //               fontWeight: FontWeight.bold,
              //               fontSize: 20,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.16,
                width: MediaQuery.of(context).size.width * 0.40,
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: causesList[index].frontColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: causesList[index].backColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      width: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Text(
                            causesList[index].title,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.005,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.31,
                            height: MediaQuery.of(context).size.height * 0.10,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(causesList[index].img),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Padding(
                          //   padding: EdgeInsets.only(
                          //     top: MediaQuery.of(context).size.height * 0.01,
                          //   ),
                          const Text(
                            'Know More',
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 15,
                            ),
                          ),
                          // ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          // Padding(
                          //   padding: EdgeInsets.only(
                          //     top: MediaQuery.of(context).size.height * 0.01,
                          //   ),
                          const Icon(
                            Icons.arrow_forward_rounded,
                            size: 18,
                            // ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
