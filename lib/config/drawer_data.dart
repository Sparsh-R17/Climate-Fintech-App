import 'package:flutter/material.dart';

import '../models/drawer_list.dart';
import './colors.dart';

List<DrawerList> drawerList = [
  DrawerList(
    boxColor: AppColor.brown,
    listName: 'Profile',
    icon: 'assets/images/png/user_icon.png',
    listTag: '@username',
    trailingIcon: Icons.navigate_next,
  ),
  DrawerList(
    boxColor: AppColor.green,
    listName: 'Social Networks',
    icon: 'assets/images/png/socialmedia_icon.png',
    listTag: '',
    trailingIcon: Icons.navigate_next,
  ),
  DrawerList(
    boxColor: AppColor.pink,
    listName: 'Notifications',
    icon: 'assets/images/png/notifications_icon.png',
    listTag: '  On',
    trailingIcon: Icons.navigate_next,
  ),
  DrawerList(
    boxColor: AppColor.brown,
    listName: 'Privacy',
    icon: 'assets/images/png/privacy_icon.png',
    listTag: '',
    trailingIcon: Icons.navigate_next,
  ),
  DrawerList(
    boxColor: AppColor.green,
    listName: 'Dark Mode',
    icon: 'assets/images/png/darkmode_icon.png',
    listTag: '',
    trailingIcon: Icons.toggle_off_outlined,
  ),
  DrawerList(
    boxColor: AppColor.pink,
    listName: 'Help',
    icon: 'assets/images/png/help_icon.png',
    listTag: '',
    trailingIcon: Icons.navigate_next,
  ),
];
