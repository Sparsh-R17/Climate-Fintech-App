import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrentDisaster {
  final String id;
  final String disasterPic;
  final String iconLocation;
  final String disasterName;
  final String location;
  final DateTime dateTime;
  final String source;
  final Color cardColor;
  final Color iconColor;

  CurrentDisaster({
    this.id = '1',
    required this.disasterPic,
    required this.iconLocation,
    required this.disasterName,
    required this.location,
    required this.source,
    required this.cardColor,
    required this.dateTime,
    required this.iconColor,
  });
}
