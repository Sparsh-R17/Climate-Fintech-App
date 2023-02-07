import 'package:flutter/cupertino.dart';

import '/models/current_disaster.dart';
import '../config/colors.dart';

class CurrentDisasterProvider with ChangeNotifier {
  int cardIndex = 0;
  final List<CurrentDisaster> _disasterList = [
    CurrentDisaster(
      cardColor: AppColor.brown,
      iconColor: AppColor.iconBrown,
      disasterPic: 'assets/images/png/earthquake.png',
      iconLocation: 'assets/images/png/earthquake_icon.png',
      disasterName: 'Earthquake',
      location: 'City,State',
      source: 'NGO',
      dateTime: DateTime(2023, 01, 17),
    ),
    CurrentDisaster(
      cardColor: AppColor.blue,
      iconColor: AppColor.iconBlue,
      disasterPic: 'assets/images/png/tsunami.png',
      iconLocation: 'assets/images/png/tsunami_icon.png',
      disasterName: 'Tsunami',
      location: 'City,State',
      source: 'NGO',
      dateTime: DateTime(2023, 01, 07),
    ),
    CurrentDisaster(
      cardColor: AppColor.yellow,
      iconColor: AppColor.iconYellow,
      disasterPic: 'assets/images/png/forestfire_image.jpg',
      iconLocation: 'assets/images/png/forestfire_icon.png',
      disasterName: 'Wildfire',
      location: 'City,State',
      source: 'NGO',
      dateTime: DateTime(2023, 01, 05),
    ),
    CurrentDisaster(
      cardColor: AppColor.blue,
      iconColor: AppColor.iconBlue,
      disasterPic: 'assets/images/png/cyclone_image.jpg',
      iconLocation: 'assets/images/png/cyclone_icon.png',
      disasterName: 'Cyclone',
      location: 'City,State',
      source: 'NGO',
      dateTime: DateTime(2022, 12, 31),
    ),
    CurrentDisaster(
      cardColor: AppColor.blue,
      iconColor: AppColor.iconBlue,
      disasterPic: 'assets/images/png/flood_image.jpg',
      iconLocation: 'assets/images/png/flood_icon.png',
      disasterName: 'Flood',
      location: 'City,State',
      source: 'NGO',
      dateTime: DateTime(2022, 12, 26),
    ),
    CurrentDisaster(
      cardColor: AppColor.brown,
      iconColor: AppColor.iconBrown,
      disasterPic: 'assets/images/png/landslide_image.jpg',
      iconLocation: 'assets/images/png/landslide_icon.png',
      disasterName: 'Landslide',
      location: 'City,State',
      source: 'NGO',
      dateTime: DateTime(2022, 12, 20),
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
