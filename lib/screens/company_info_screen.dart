import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/config/colors.dart';
import '../widgets/company_info.dart';

class CompanyInfoScreen extends StatefulWidget {
  const CompanyInfoScreen({super.key});

  @override
  State<CompanyInfoScreen> createState() => _CompanyInfoScreenState();
}

class _CompanyInfoScreenState extends State<CompanyInfoScreen> {
  bool _clickCounter = false;
  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.green,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: MaterialButton(
                elevation: 0,
                onPressed: () {},
                color: Colors.white30,
                textColor: Colors.white,
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
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/say_trees.png'),
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
                          'SAYTREES ENVIRONMENTAL TRUST',
                          style: GoogleFonts.markoOne(
                            color: AppColor.iconGreen.withOpacity(0.8),
                            fontSize: 19,
                          ),
                        ),
                      ),
                      _clickCounter
                          ? SizedBox(
                              height: pageHeight * 0.51,
                              child: SingleChildScrollView(
                                  child: infoBox(pageWidth, pageHeight)),
                            )
                          : infoBox(pageWidth, pageHeight),
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
                            foregroundColor:
                                MaterialStateProperty.all(AppColor.iconGreen),
                          ),
                          child: Text(
                            _clickCounter ? 'Read Less' : 'Read More',
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                      CompanyInfo(
                        clickCounter: _clickCounter,
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

  Container infoBox(double pageWidth, double pageHeight) {
    return Container(
      margin: EdgeInsets.only(
        left: pageWidth * 0.1,
        right: pageWidth * 0.1,
        top: pageHeight * 0.02,
      ),
      height: _clickCounter ? pageHeight * 0.6 : pageHeight * 0.225,
      child: Text(
        'Bangalore, fondly called “The city of Gardens” inspired fables and verses alike. With an unbelievably pleasant weather throughout the year, it was a green haven for decades. Corporatisation of the city and rapid influx of the IT industry brought jobs and investments galore, but took a toll on the natural beauty the city was blessed with. While concrete jungles started birthing, trees were felled at a pace that worried the old timers and tree lovers. That\'s when a motley group of individuals - software engineers at work and passionate tree lovers at heart came together, and \‘SayTrees\’ was born. Bangalore, fondly called “The city of Gardens” inspired fables and verses alike. With an unbelievably pleasant weather throughout the year, it was a green haven for decades. Corporatisation of the city and rapid influx of the IT industry brought jobs and investments galore, but took a toll on the natural beauty the city was blessed with. While concrete jungles started birthing, trees were felled at a pace that worried the old timers and tree lovers. That\'s when a motley group of individuals - software engineers at work and passionate tree lovers at heart came together, and \‘SayTrees\’ was born.',
        overflow: _clickCounter ? null : TextOverflow.ellipsis,
        maxLines: _clickCounter ? null : 11,
        textAlign: TextAlign.justify,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }
}
