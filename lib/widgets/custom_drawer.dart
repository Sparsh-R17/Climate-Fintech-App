import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './drawer_list_tile.dart';
import '../config/drawer_data.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        width: MediaQuery.of(context).size.width * 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/card_design.png'),
                  ),
                ),
                margin:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                child: Stack(
                  children: [
                    Center(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: CircleAvatar(
                              radius: 43,
                              foregroundImage: AssetImage(
                                  'assets/images/Profile Picture.png'),
                            ),
                          ),
                          SizedBox(
                            width: 5,
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
                                height: 3,
                              ),
                              Text('CrimeMaster Gogo',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )),
            Expanded(
              child: ListView.builder(
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
      ),
    );
  }
}
