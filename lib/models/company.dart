import 'package:flutter/material.dart';

class Company {
  final String id;
  final String img;
  final Color color;
  final Color accentColor;
  final String quote;
  final String info;
  final List<dynamic> mobile;
  final String website;
  final String email;
  final List<dynamic> address;
  final Color button;

  Company({
    required this.id,
    required this.img,
    required this.color,
    required this.accentColor,
    required this.quote,
    required this.info,
    required this.mobile,
    required this.website,
    required this.email,
    required this.address,
    required this.button,
  });
}
