import 'package:flutter/material.dart';

import '../config/colors.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.11,
        decoration: BoxDecoration(
          color: AppColor.brown,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset('assets/images/user_icon.png'),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Profile'),
          Text('@username'),
        ],
      ),
    );
  }
}
