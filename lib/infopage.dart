import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/colors.dart';

class InfoPg extends StatefulWidget {
  const InfoPg({super.key});

  @override
  State<InfoPg> createState() => _InfoPgState();
}

class _InfoPgState extends State<InfoPg> {
  bool clickChecker = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(
            children: [
              //image
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: Container(
                  color: AppColor.green,
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Stack(
                    children: [
                      //cross sign
                      Positioned(
                        top: 10,
                        right: 0,
                        left: MediaQuery.of(context).size.width * 0.9,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(119, 255, 255, 255),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          constraints: BoxConstraints(
                            maxHeight:
                                MediaQuery.of(context).size.height * 0.20,
                            maxWidth: MediaQuery.of(context).size.height * 0.25,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            //color: Colors.red,
                            image: DecorationImage(
                              image: AssetImage('assets/images/say_trees.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.285,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.03,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Container(
                    //color: Colors.yellow,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SAYTRESS Environmental Trust',
                          style: GoogleFonts.markoOne(
                            color: AppColor.iconGreen,
                            fontWeight: FontWeight.bold,
                            //Autosize Text to be put
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        //cnj jb
                        Container(
                          child: clickChecker
                              ? SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.24,
                                  child: Container(
                                      //color: Colors.blue,
                                      child: Text(
                                    'Bangalore, fondly called “The city of Gardens” inspired fables and verses alike. With an unbelievably pleasant weather throughout the year, it was a green haven for decades. Corporatisation of the city and rapid influx of the IT industry brought jobs and investments galore, but took a toll on the natural beauty the city was blessed with. While concrete jungles started birthing, trees were felled at a pace that worried the old timers and tree lovers. That\'s when a motley group of individuals - software engineers at work and passionate tree lovers at heart came together, and \‘SayTrees\’ was born. ',
                                  )),
                                )
                              : Container(
                                  constraints: BoxConstraints(
                                    maxHeight:
                                        MediaQuery.of(context).size.height *
                                            0.45,
                                  ),
                                  child: SingleChildScrollView(
                                    child: Text(
                                      'Bangalore, fondly called “The city of Gardens” inspired fables and verses alike. With an unbelievably pleasant weather throughout the year, it was a green haven for decades. Corporatisation of the city and rapid influx of the IT industry brought jobs and investments galore, but took a toll on the natural beauty the city was blessed with. While concrete jungles started birthing, trees were felled at a pace that worried the old timers and tree lovers. That\'s when a motley group of individuals - software engineers at work and passionate tree lovers at heart came together, and \‘SayTrees\’ was born. Bangalore, fondly called “The city of Gardens” inspired fables and verses alike. With an unbelievably pleasant weather throughout the year, it was a green haven for decades. Corporatisation of the city and rapid influx of the IT industry brought jobs and investments galore, but took a toll on the natural beauty the city was blessed with. While concrete jungles started birthing, trees were felled at a pace that worried the old timers and tree lovers. That\'s when a motley group of individuals - software engineers at work and passionate tree lovers at heart came together, and \‘SayTrees\’ was born. Bangalore, fondly called “The city of Gardens” inspired fables and verses alike. With an unbelievably pleasant weather throughout the year, it was a green haven for decades. Corporatisation of the city and rapid influx of the IT industry brought jobs and investments galore, but took a toll on the natural beauty the city was blessed with. While concrete jungles started birthing, trees were felled at a pace that worried the old timers and tree lovers. That\'s when a motley group of individuals - software engineers at work and passionate tree lovers at heart came together, and \‘SayTrees\’ was born. ',
                                    ),
                                  ),
                                ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              clickChecker = !clickChecker;
                            });
                          },
                          child: clickChecker
                              ? Row(
                                  children: [
                                    Text(
                                      'Read More',
                                      style: TextStyle(
                                        color: AppColor.iconGreen,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: AppColor.iconGreen,
                                    )
                                  ],
                                )
                              : Row(
                                  children: [
                                    Text(
                                      'Read Less',
                                      style: TextStyle(
                                        color: AppColor.iconGreen,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_up,
                                      color: AppColor.iconGreen,
                                    )
                                  ],
                                ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.61,
                child: clickChecker
                    ? Container(
                        //constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width-10),
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.02,
                          right: 15,
                        ),
                        //color: Colors.red,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.02),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColor.green,
                              ),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.phone,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        Text(
                                          'Telephone',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 19,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                    //color: Colors.red,
                                    child: Text(
                                      "+91 - 96635 77758\n+91 - 96635 77748\n+91 - 99102 98215\n(Northern India)",
                                      maxLines: 3,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      Text(
                                        'Address',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'SayTrees,\nNo. 6, 1st cross, first floor,\nBasapura, Near Hosa Road Junction,\nBengaluru, Karnataka - 560100',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.green,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.email,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          'Email',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Container(
                                          constraints: BoxConstraints(
                                              maxWidth: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.24),
                                          child: Text(
                                            'info@saytress.org',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: (() {
                                    print('GO TO Pressed');
                                  }),
                                  child: Container(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColor.green,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              constraints: BoxConstraints(
                                                  maxWidth:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.24),
                                              child: Text(
                                                'GO TO WEBSITE',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              color: Colors.white,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.88,
                right: MediaQuery.of(context).size.width / 4,
                child: ElevatedButton(
                    onPressed: (() {
                      print('Donate is Pressed');
                    }),
                    style: ElevatedButton.styleFrom(
                      primary: AppColor.iconGreen,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'DONATE NOW',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
