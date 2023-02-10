import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class Donation {
  final bool acceptForm;
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
    this.acceptForm = false,
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
  late List<Donation> _hostDonation = [
    // Donation(
    //     amt: '500000',
    //     name: 'CrimeMaster',
    //     age: '25',
    //     mobile: '123456789',
    //     bankName: 'Demo Bank Of India',
    //     accNum: '69696969',
    //     panNum: 'KPSTR2187B',
    //     ifsc: 'DBOI0001681'),
    // Donation(
    //   amt: '200000',
    //   name: 'Gogo',
    //   age: '28',
    //   mobile: '987654321',
    //   bankName: 'Ghost Bank',
    //   accNum: '68686869',
    //   panNum: 'KPSDE1215G',
    //   ifsc: 'GBIN0001587',
    // )
  ];

  List<Donation> get hostDonation {
    return [..._hostDonation];
  }

  Future<void> fetchDonation() async {
    final url = Uri.parse(
        'https://cfa-project-2642a-default-rtdb.asia-southeast1.firebasedatabase.app/donation.json');

    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      final List<Donation> acceptedDonation = [];
      extractedData.forEach((key, value) {
        if (value['acceptForm'] == true) {
          acceptedDonation.add(
            Donation(
              amt: value['amt'],
              name: value['name'],
              age: value['age'],
              mobile: value['mobile'],
              bankName: value['bank'],
              accNum: value['accNum'],
              panNum: value['panCard'],
              ifsc: value['ifsc'],
            ),
          );
        }
      });
      _hostDonation = acceptedDonation;
      notifyListeners();
    } catch (error) {
      rethrow;
    }
  }

  Future<void> addDonation(Donation userDonation) async {
    final url = Uri.parse(
        'https://cfa-project-2642a-default-rtdb.asia-southeast1.firebasedatabase.app/donation.json');

    try {
      final response = await http.post(
        url,
        body: json.encode(
          {
            'name': userDonation.name,
            'acceptForm': userDonation.acceptForm,
            'panCard': userDonation.panNum,
            'accNum': userDonation.accNum,
            'age': userDonation.age,
            'amt': userDonation.amt,
            'ifsc': userDonation.ifsc,
            'mobile': userDonation.mobile,
            'bank': userDonation.bankName,
          },
        ),
      );
      _hostDonation.add(userDonation);
    } catch (error) {
      rethrow;
    }

    _hostDonation.add(userDonation);
  }
}
