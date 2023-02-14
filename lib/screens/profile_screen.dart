import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/ProfileScreen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 270,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(105),
                  bottomRight: Radius.circular(105),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/png/profilecard_image.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(31, 80, 25, 36),
              // padding: const EdgeInsets.fromLTRB(31, 100, 25, 36),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  ),
                  const SizedBox(height: 2, width: double.infinity),
                  Container(
                    height: 280,
                    width: 290,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.9),
                      // color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                            // color: Colors.grey,
                            // blurRadius: 4,
                            // blurRadius: 10,
                            // spreadRadius: 4,
                            )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(80, 28, 16, 0),
                          child: Image.asset(
                            'assets/images/png/Profile Picture.png',
                            alignment: Alignment.center,
                            scale: 0.7,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(120, 10, 16, 0),
                          child: Text(
                            'Name',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(99, 10, 16, 0),
                          child: Text(
                            '@username',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(1, 30, 16, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/png/date_of_birth.png',
                                    alignment: Alignment.topLeft,
                                    scale: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(15, 30, 16, 0),
                                        child: Text(
                                          'D.O.B',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 21,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(15, 10, 16, 0),
                                        child: Text(
                                          '09/09/0009',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(1, 1, 16, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/png/mobile_number.png',
                                    alignment: Alignment.topLeft,
                                    scale: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(15, 30, 16, 0),
                                        child: Text(
                                          'Mobile No.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 21,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(15, 10, 16, 0),
                                        child: Text(
                                          '090900808',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(1, 1, 16, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/png/email_id.png',
                                    scale: 60,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(6, 35, 16, 0),
                                        child: Text(
                                          'Email id.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 21,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(6, 15, 16, 0),
                                        child: Text(
                                          'letsmeet@kaal.com',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
