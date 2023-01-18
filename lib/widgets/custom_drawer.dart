import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './drawer_list_tile.dart';
import '../config/drawer_data.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

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
                  image: AssetImage('assets/images/card_design.png'),
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
                            foregroundImage:
                                AssetImage('assets/images/Profile Picture.png'),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.015,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Back,',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.002,
                            ),
                            Text(
                              'CrimeMasterGogo',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
