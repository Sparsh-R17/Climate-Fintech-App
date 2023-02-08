import 'package:flutter/material.dart';

class Donation {
  final String name;
  final String age;
  final String mobile;
  final String bankName;
  final String accNum;
  final String panNum;
  final String ifsc;
  final String amt;
  final int complete;

  Donation({
    this.complete = 50,
    required this.amt,
    required this.name,
    required this.age,
    required this.mobile,
    required this.bankName,
    required this.accNum,
    required this.panNum,
    required this.ifsc,
  });
}

class DonationProvider with ChangeNotifier {
  final List<Donation> _hostDonation = [
    Donation(
        amt: '500000',
        name: 'CrimeMaster',
        age: '25',
        mobile: '123456789',
        bankName: 'Demo Bank Of India',
        accNum: '69696969',
        panNum: 'KPSTR2187B',
        ifsc: 'DBOI0001681'),
    Donation(
        amt: '200000',
        name: 'Gogo',
        age: '28',
        mobile: '987654321',
        bankName: 'Ghost Bank',
        accNum: '68686869',
        panNum: 'KPSDE1215G',
        ifsc: 'GBIN0001587')
  ];

  List<Donation> get hostDonation {
    return [..._hostDonation];
  }

  void addDonation(
      {required String amt,
      required String name,
      required String age,
      required String mobile,
      required String bankName,
      required String accNum,
      required String panNum,
      required String ifsc}) {
    _hostDonation.add(
      Donation(
          amt: amt,
          name: name,
          age: age,
          mobile: mobile,
          bankName: bankName,
          accNum: accNum,
          panNum: panNum,
          ifsc: ifsc),
    );
    notifyListeners();
  }
}
