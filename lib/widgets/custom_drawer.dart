import 'package:flutter/material.dart';

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
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Image.asset('assets/images/card_design.png'),
          ),
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
    );
  }
}
