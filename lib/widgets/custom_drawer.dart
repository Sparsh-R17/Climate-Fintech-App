import 'package:climate_fintech_app/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './drawer_list_tile.dart';
import '../config/drawer_data.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

User loggedin = loggedin;

class _CustomDrawerState extends State<CustomDrawer> {
  final _auth = FirebaseAuth.instance;

  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedin = user;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.8,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/png/card_design.png'),
                ),
              ),
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).viewPadding.top + 10,
                right: MediaQuery.of(context).size.width * 0.05,
                left: MediaQuery.of(context).size.width * 0.05,
              ),
              child: Stack(
                children: [
                  Center(
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: CircleAvatar(
                            radius: 43,
                            foregroundImage: AssetImage(
                                'assets/images/png/Profile Picture.png'),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.015,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Text(
                                  'Welcome Back,',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.002,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Text(
                                  _auth.currentUser!.displayName.toString(),
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 7,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(16, 24, 18.8, 24),
              itemCount: 6,
              itemBuilder: (context, index) {
                return DrawerListTile(
                    containerColor: drawerList[index].boxColor,
                    containerImage: drawerList[index].icon,
                    name: drawerList[index].listName,
                    tagName: drawerList[index].listTag,
                    tileIcon: drawerList[index].trailingIcon,
                    index: index);
              },
            ),
          ),
          TextButton.icon(
            onPressed: (() {
              print('Pressed Logout');
              _auth.signOut();
              Navigator.pushReplacementNamed(context, LoginPage.routeName);
            }),
            icon: const Icon(
              Icons.logout_outlined,
              color: Colors.black,
              size: 24,
            ),
            label: const Text(
              'Logout',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
