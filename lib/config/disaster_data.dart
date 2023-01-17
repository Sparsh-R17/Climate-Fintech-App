import '../config/colors.dart';
import '../models/current_disaster.dart';

List<CurrentDisaster> disasterList = [
  //TODO -> YYYY, MM, DD, HH, MM (time is in 24hr format)
  CurrentDisaster(
    cardColor: AppColor.brown,
    disasterPic: 'assets/images/earthquake.png',
    iconLocation: 'assets/images/earthquake_icon.png',
    disasterName: 'Earthquake',
    location: 'City,State',
    source: 'NGO',
    dateTime: DateTime.now(),
  ),
  CurrentDisaster(
    cardColor: AppColor.blue,
    disasterPic: 'assets/images/tsunami.png',
    iconLocation: 'assets/images/earthquake_icon.png',
    disasterName: 'Tsunami',
    location: 'City,State',
    source: 'NGO',
    dateTime: DateTime(2022, 12, 30),
  ),
  CurrentDisaster(
    cardColor: AppColor.brown,
    disasterPic: 'assets/images/earthquake.png',
    iconLocation: 'assets/images/earthquake_icon.png',
    disasterName: '33',
    location: 'City,State',
    source: 'NGO',
    dateTime: DateTime.now(),
  ),
  CurrentDisaster(
    cardColor: AppColor.brown,
    disasterPic: 'assets/images/earthquake.png',
    iconLocation: 'assets/images/earthquake_icon.png',
    disasterName: '33',
    location: 'City,State',
    source: 'NGO',
    dateTime: DateTime.now(),
  ),
  CurrentDisaster(
    cardColor: AppColor.brown,
    disasterPic: 'assets/images/earthquake.png',
    iconLocation: 'assets/images/earthquake_icon.png',
    disasterName: '33',
    location: 'City,State',
    source: 'NGO',
    dateTime: DateTime.now(),
  ),
  CurrentDisaster(
    cardColor: AppColor.brown,
    disasterPic: 'assets/images/earthquake.png',
    iconLocation: 'assets/images/earthquake_icon.png',
    disasterName: '33',
    location: 'City,State',
    source: 'NGO',
    dateTime: DateTime.now(),
  ),
];
