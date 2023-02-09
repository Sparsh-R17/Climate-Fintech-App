import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '/models/current_disaster.dart';
import '../config/colors.dart';

class CurrentDisasterProvider with ChangeNotifier {
  int cardIndex = 0;
  late List<CurrentDisaster> _disasterList = [
    // CurrentDisaster(
    //   cardColor: AppColor.brown,
    //   iconColor: AppColor.iconBrown,
    //   disasterPic: 'assets/images/png/earthquake.png',
    //   iconLocation: 'assets/images/png/earthquake_icon.png',
    //   disasterName: 'Earthquake',
    //   location: 'City,State',
    //   source: 'NGO',
    //   dateTime: DateTime(2023, 01, 17),
    // ),
    // CurrentDisaster(
    //   cardColor: AppColor.blue,
    //   iconColor: AppColor.iconBlue,
    //   disasterPic: 'assets/images/png/tsunami.png',
    //   iconLocation: 'assets/images/png/tsunami_icon.png',
    //   disasterName: 'Tsunami',
    //   location: 'City,State',
    //   source: 'NGO',
    //   dateTime: DateTime(2023, 01, 07),
    // ),
    // CurrentDisaster(
    //   cardColor: AppColor.yellow,
    //   iconColor: AppColor.iconYellow,
    //   disasterPic: 'assets/images/png/forestfire_image.jpg',
    //   iconLocation: 'assets/images/png/forestfire_icon.png',
    //   disasterName: 'Wildfire',
    //   location: 'City,State',
    //   source: 'NGO',
    //   dateTime: DateTime(2023, 01, 05),
    // ),
    // CurrentDisaster(
    //   cardColor: AppColor.blue,
    //   iconColor: AppColor.iconBlue,
    //   disasterPic: 'assets/images/png/cyclone_image.jpg',
    //   iconLocation: 'assets/images/png/cyclone_icon.png',
    //   disasterName: 'Cyclone',
    //   location: 'City,State',
    //   source: 'NGO',
    //   dateTime: DateTime(2022, 12, 31),
    // ),
    // CurrentDisaster(
    //   cardColor: AppColor.brown,
    //   iconColor: AppColor.iconBrown,
    //   disasterPic: 'assets/images/png/landslide_image.jpg',
    //   iconLocation: 'assets/images/png/landslide_icon.png',
    //   disasterName: 'Landslide',
    //   location: 'City,State',
    //   source: 'NGO',
    //   dateTime: DateTime(2022, 12, 20),
    // ),
    // CurrentDisaster(
    //   cardColor: Color(0xFFC9E3E3),
    //   iconColor: Color(0xFF5DB0B0),
    //   disasterPic: 'assets/images/png/flood_image.jpg',
    //   iconLocation: 'assets/images/png/flood_icon.png',
    //   disasterName: 'Flood',
    //   location: 'City,State',
    //   source: 'NGO',
    //   dateTime: DateTime(2022, 12, 26),
    // ),
  ];

  List<CurrentDisaster> get disasterList {
    return [..._disasterList];
  }

  Future<void> fetchAndSetData() async {
    final url = Uri.parse(
        'https://cfa-project-2642a-default-rtdb.asia-southeast1.firebasedatabase.app/current-disaster.json');

    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      final List<CurrentDisaster> disasterLoaded = [];
      extractedData.forEach((key, data) {
        disasterLoaded.add(
          CurrentDisaster(
            id: key,
            cardColor: Color(data['cardColor']),
            disasterName: data['disasterName'],
            source: data['source'],
            disasterPic: data['disasterPic'],
            iconLocation: data['iconLocation'],
            location: data['location'],
            dateTime: DateTime.parse(data['dateTime']),
            iconColor: Color(data['iconColor']),
          ),
        );
      });
      print('Here I come');
      _disasterList = disasterLoaded;
      notifyListeners();
    } catch (error) {
      rethrow;
    }
  }

  Future<void> addDisaster() async {
    final url = Uri.parse(
        'https://cfa-project-2642a-default-rtdb.asia-southeast1.firebasedatabase.app/current-disaster.json');

    http
        .post(url,
            body: json.encode({
              'cardColor': 0xFFC9E3E3,
              'iconColor': 0xFF5DB0B0,
              'disasterPic': 'assets/images/png/flood_image.jpg',
              'iconLocation': 'assets/images/png/flood_icon.png',
              'disasterName': 'Flood',
              'location': 'City,State',
              'source': 'NGO',
              'dateTime': '2022-12-26',
            }))
        .then((response) {
      print(response.body);
    }).catchError((error) {
      print(error);
      throw error;
    });
  }

  void changeCarousel(int index) {
    cardIndex = index;
    notifyListeners();
  }
}
