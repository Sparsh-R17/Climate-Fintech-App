import 'package:flutter/material.dart';

import '../config/colors.dart';

class DrawerListTile extends StatelessWidget {
  final Color containerColor;
  final String name;
  final String containerImage;
  final String tagName;
  final IconData tileIcon;

  const DrawerListTile({
    super.key,
    required this.containerColor,
    required this.name,
    required this.containerImage,
    required this.tagName,
    required this.tileIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.11,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(containerImage),
      ),
      trailing: Icon(tileIcon),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name),
          Text(tagName),
        ],
      ),
    );
  }
}
