import 'package:climate_fintech_app/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffafafa),
      body: Stack(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SvgPicture.asset(
              'assets/images/svg/login_pattern.svg',
              fit: BoxFit.cover,
            ),
          ),
          // Container(
          //   alignment: Alignment.topLeft,
          //   padding: EdgeInsets.only(
          //     top: MediaQuery.of(context).size.height * 0.25,
          //     left: MediaQuery.of(context).size.width * 0.1,
          //     right: MediaQuery.of(context).size.width * 0.2,
          //   ),
          //   child: Text(
          //     'Welcome\nBack',
          //     style: GoogleFonts.poppins(
          //       color: Colors.black,
          //       fontWeight: FontWeight.bold,
          //       fontSize: 25,
          //     ),
          //   ),
          // ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.1,
                left: MediaQuery.of(context).size.width * 0.05,
                right: MediaQuery.of(context).size.width * 0.05,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(
                      //top: MediaQuery.of(context).size.height * 0.25,
                      //left: MediaQuery.of(context).size.width * 0.1,
                      right: MediaQuery.of(context).size.width * 0.2,
                    ),
                    child: Text(
                      'Welcome\nBack',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sign In',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.height * 0.04,
                        backgroundColor: Colors.black,
                        child: IconButton(
                          onPressed: (() {
                            print('Signed In');
                          }),
                          icon: const Icon(Icons.arrow_forward),
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TextButton(
                        onPressed: (() {
                          print('SignUp');
                          Navigator.pushNamed(context, SignUp.routeName);
                        }),
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: (() {
                            print(
                              'Forget Password',
                            );
                          }),
                          child: Text(
                            'Forget Password',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                              fontSize: 15,
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
