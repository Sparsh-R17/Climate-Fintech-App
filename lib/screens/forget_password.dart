import 'package:flutter/material.dart';

import '/config/colors.dart';
import '/screens/login.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword extends StatefulWidget {
  static const routeName = '/forget-password';
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfffafafa),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SvgPicture.asset(
                'assets/images/svg/sign_up_pattern.svg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.07,
                right: MediaQuery.of(context).size.width * 0.07,
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.18,
                      right: MediaQuery.of(context).size.width * 0.2,
                    ),
                    child: Text(
                      'Forget Password?',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  const TextField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Email',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  const TextField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'New Password',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  const TextField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  ElevatedButton(
                      onPressed: (() {
                        print('SUBMIT');
                        Navigator.pushNamed(context, LoginPage.routeName);
                      }),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.iconGreen,
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15)),
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
