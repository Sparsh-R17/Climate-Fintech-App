import 'package:flutter/material.dart';

import '../models/drawer_list.dart';
import './colors.dart';

List<DrawerList> drawerList = [
  DrawerList(
    boxColor: AppColor.brown,
    listName: 'Profile',
    icon: 'assets/images/user_icon.png',
    listTag: '@username',
    trailingIcon: Icons.navigate_next,
  ),
  DrawerList(
    boxColor: AppColor.green,
    listName: 'Your Social Networks',
    icon: 'assets/images/socialmedia_icon.png',
    listTag: '',
    trailingIcon: Icons.navigate_next,
  ),
  DrawerList(
    boxColor: AppColor.pink,
    listName: 'Notifications',
    icon: 'assets/images/notifications_icon.png',
    listTag: '  On',
    trailingIcon: Icons.navigate_next,
  ),
  DrawerList(
    boxColor: AppColor.brown,
    listName: 'Privacy',
    icon: 'assets/images/privacy_icon.png',
    listTag: '',
    trailingIcon: Icons.navigate_next,
  ),
  DrawerList(
    boxColor: AppColor.green,
    listName: 'Dark Mode',
    icon: 'assets/images/darkmode_icon.png',
    listTag: '',
    trailingIcon: Icons.toggle_off_outlined,
  ),
  DrawerList(
    boxColor: AppColor.pink,
    listName: 'Help',
    icon: 'assets/images/help_icon.png',
    listTag: '',
    trailingIcon: Icons.navigate_next,
  ),
];
