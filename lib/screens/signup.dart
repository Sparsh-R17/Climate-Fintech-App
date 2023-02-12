import 'package:climate_fintech_app/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  static const routeName = '/sign-up';
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

final _auth = FirebaseAuth.instance;

class _SignUpState extends State<SignUp> {
  String name = '';
  String email = '';
  String password = '';
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    super.dispose();
  }

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
            child: Column(children: [
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.18,
                  right: MediaQuery.of(context).size.width * 0.2,
                ),
                child: Text(
                  'Create\nAccount',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  hintText: 'Name',
                ),
                controller: _nameController,
                onChanged: (value) {
                  setState(() {});
                  name = value;
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
                controller: _emailController,
                onChanged: (value) {
                  setState(() {});
                  email = value;
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              TextFormField(
                //textInputAction: TextInputAction.next,
                obscureText: true,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
                controller: _passwordController,
                onChanged: (value) {
                  setState(() {});
                  password = value;
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Confirm \nAccount Creation',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: (() async {
                      try {
                        final newUser =
                            await _auth.createUserWithEmailAndPassword(
                          // email: email.trim(),
                          // password: password,
                          email: _emailController.text.trim(),
                          password: _passwordController.text,
                        );
                        _auth.currentUser!.updateDisplayName(name);
                        if (newUser != null) {
                          Navigator.pushNamed(context, LoginPage.routeName);
                        } else {
                          print('Pass not same');
                        }
                      } catch (e) {
                        print(e);
                      }
                      setState(() {});
                    }),
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.height * 0.04,
                      backgroundColor: Colors.black,
                      child:
                          // IconButton(
                          // onPressed: (() {
                          //   print('Account create confirmation');
                          //   Navigator.pushNamed(context, LoginPage.routeName);
                          // }),
                          // icon: const
                          Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      // color: Colors.white,
                      // ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              TextButton(
                onPressed: (() {
                  print('Already have an account');
                  Navigator.pushNamed(context, LoginPage.routeName);
                }),
                child: Text(
                  'Already Have an Account?',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
