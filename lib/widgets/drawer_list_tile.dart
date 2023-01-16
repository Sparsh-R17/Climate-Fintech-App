import 'package:flutter/material.dart';

import '../config/colors.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
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
        ),
        ListTile(
          leading: Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.11,
            decoration: BoxDecoration(
              color: AppColor.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('assets/images/socialmedia_icon.png'),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Your Social Networks'),
            ],
          ),
        ),
        ListTile(
          leading: Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.11,
            decoration: BoxDecoration(
              color: AppColor.pink,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('assets/images/notifications_icon.png'),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Notifications'),
            ],
          ),
        ),
        ListTile(
          leading: Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.11,
            decoration: BoxDecoration(
              color: AppColor.brown,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('assets/images/privacy_icon.png'),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Privacy'),
            ],
          ),
        ),
        ListTile(
          leading: Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.11,
            decoration: BoxDecoration(
              color: AppColor.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('assets/images/darkmode_icon.png'),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Dark Mode'),
            ],
          ),
        ),
        ListTile(
          leading: Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.11,
            decoration: BoxDecoration(
              color: AppColor.pink,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('assets/images/help_icon.png'),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Help'),
            ],
          ),
        ),
      ],
    );
  }
}
