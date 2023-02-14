import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '/config/colors.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword extends StatefulWidget {
  static const routeName = '/forget-password';
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

final _auth = FirebaseAuth.instance;

class _ForgetPasswordState extends State<ForgetPassword> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfffafafa),
      body: Stack(
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
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.30,
                    right: MediaQuery.of(context).size.width * 0.2,
                  ),
                  child: Text(
                    'Forget Password?',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),

                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.left,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                  ),
                  controller: _emailController,
                ),
                //
                const Spacer(),
                Container(
                  margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.2),
                  child: ElevatedButton(
                    onPressed: (() {
                      print('Forget Password button clicked');
                      try {
                        _auth
                            .sendPasswordResetEmail(
                                email: _emailController.text.trim())
                            .then((value) => Navigator.of(context).pop());
                      } catch (e) {
                        print(e);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              e.toString(),
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        );
                      }
                    }),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.iconGreen,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15)),
                    child: const Text(
                      'Send RESET Email',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
