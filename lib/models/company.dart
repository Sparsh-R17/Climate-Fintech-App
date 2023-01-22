import 'package:flutter/material.dart';

class Company {
  final String companyTag;
  final String? id;
  final String img;
  final String appBarTitle;
  final Color color;
  final Color accentColor;
  final String name;
  final String info;
  final String shortInfo;
  final List<String> mobile;
  final String website;
  final String email;
  final List<String> address;
  final Color buttonColor;
  final Color expandButton;

  Company({
    required this.id,
    required this.expandButton,
    required this.companyTag,
    required this.appBarTitle,
    required this.img,
    required this.color,
    required this.accentColor,
    required this.name,
    required this.info,
    required this.shortInfo,
    required this.mobile,
    required this.website,
    required this.email,
    required this.address,
    required this.buttonColor,
  });
}
