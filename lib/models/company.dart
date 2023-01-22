import 'package:flutter/material.dart';

class Company {
  final int id;
  final String img;
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

  Company({
    required this.id,
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
