import 'package:flutter/cupertino.dart';

class CurrentDisaster {
  final String disasterPic;
  final String iconLocation;
  final String disasterName;
  final String location;
  final DateTime dateTime;
  final String source;
  final Color cardColor;

  CurrentDisaster({
    required this.disasterPic,
    required this.iconLocation,
    required this.disasterName,
    required this.location,
    required this.source,
    required this.cardColor,
    required this.dateTime,
  });
}
