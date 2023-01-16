import 'package:flutter/material.dart';

import './drawer_list_tile.dart';

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
            child: ListView(
              children: const [
                DrawerListTile(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
