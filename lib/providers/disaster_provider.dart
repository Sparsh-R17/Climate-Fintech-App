import 'package:flutter/cupertino.dart';

import '/models/current_disaster.dart';
import '../config/colors.dart';

class CurrentDisasterProvider with ChangeNotifier {
  int cardIndex = 0;
  final List<CurrentDisaster> _disasterList = [
    //TODO -> YYYY, MM, DD, HH, MM (time is in 24hr format)
    CurrentDisaster(
      cardColor: AppColor.brown,
      disasterPic: 'assets/images/earthquake.png',
      iconLocation: 'assets/images/earthquake_icon.png',
      disasterName: 'Earthquake',
      location: 'City,State',
      source: 'NGO',
      dateTime: DateTime.now(),
      iconColor: AppColor.iconBrown,
    ),
    CurrentDisaster(
      cardColor: AppColor.blue,
      iconColor: AppColor.iconBlue,
      disasterPic: 'assets/images/tsunami.png',
      iconLocation: 'assets/images/earthquake_icon.png',
      disasterName: 'Tsunami',
      location: 'City,State',
      source: 'NGO',
      dateTime: DateTime(2022, 12, 30),
    ),
    CurrentDisaster(
      cardColor: AppColor.pink,
      iconColor: AppColor.iconPink,
      disasterPic: 'assets/images/earthquake.png',
      iconLocation: 'assets/images/earthquake_icon.png',
      disasterName: '33',
      location: 'City,State',
      source: 'NGO',
      dateTime: DateTime.now(),
    ),
    CurrentDisaster(
      cardColor: AppColor.green,
      iconColor: AppColor.iconGreen,
      disasterPic: 'assets/images/earthquake.png',
      iconLocation: 'assets/images/earthquake_icon.png',
      disasterName: '33',
      location: 'City,State',
      source: 'NGO',
      dateTime: DateTime.now(),
    ),
    CurrentDisaster(
      cardColor: AppColor.yellow,
      iconColor: AppColor.iconYellow,
      disasterPic: 'assets/images/earthquake.png',
      iconLocation: 'assets/images/earthquake_icon.png',
      disasterName: '33',
      location: 'City,State',
      source: 'NGO',
      dateTime: DateTime.now(),
    ),
    CurrentDisaster(
      cardColor: AppColor.brown,
      iconColor: AppColor.iconBrown,
      disasterPic: 'assets/images/earthquake.png',
      iconLocation: 'assets/images/earthquake_icon.png',
      disasterName: '33',
      location: 'City,State',
      source: 'NGO',
      dateTime: DateTime.now(),
    ),
  ];

  List<CurrentDisaster> get disasterList {
    return [..._disasterList];
  }

  void changeCarousel(int index) {
    cardIndex = index;
    notifyListeners();
  }
}
