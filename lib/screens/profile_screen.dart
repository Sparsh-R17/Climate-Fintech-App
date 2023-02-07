import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 353,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/profilecard_image.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(31, 68, 25, 36),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset('assets/images/Profile Picture.png'),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              'Welcome back,',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'CrimeMasterGogo',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ])
                    ],
                  ),
                  const SizedBox(height: 34, width: double.infinity),
                  Container(
                    height: 357,
                    width: 298,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          spreadRadius: 4,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(264, 10, 16, 0),
                          child: Image.asset('assets/images/pencil_icon.png',
                              alignment: Alignment.topLeft),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(42, 28, 208, 0),
                          child: Text(
                            'Name',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(56, 9, 0, 0),
                          child: Text(
                            'CrimeMasterGogo',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(33, 25, 25, 100),
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    Color.fromRGBO(33, 25, 25, 100)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(42, 28, 0, 0),
                          child: Text(
                            'D.O.B',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(56, 9, 0, 0),
                          child: Text(
                            '29/02/2023',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(33, 25, 25, 100),
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    Color.fromRGBO(33, 25, 25, 100)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(42, 28, 0, 0),
                          child: Text(
                            'Mobile No.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(56, 9, 0, 0),
                          child: Text(
                            '6969696969',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(33, 25, 25, 100),
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    Color.fromRGBO(33, 25, 25, 100)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(42, 28, 0, 0),
                          child: Text(
                            'Email ID',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(56, 9, 0, 0),
                          child: Text(
                            'trial@app.com',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(33, 25, 25, 100),
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    Color.fromRGBO(33, 25, 25, 100)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                    width: double.infinity,
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
