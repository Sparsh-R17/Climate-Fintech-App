import 'package:flutter/material.dart';

class PaymentCard {
  final String id;
  final String name;
  final String cardDesign;
  final String type;
  final String cardNumber;
  final String expDate;
  final String chip;
  final String logo;

  PaymentCard({
    required this.id,
    required this.name,
    required this.cardDesign,
    required this.cardNumber,
    required this.chip,
    required this.expDate,
    required this.logo,
    required this.type,
  });
}

class PaymentCardProvider with ChangeNotifier {
  List<PaymentCard> _userCards = [
    PaymentCard(
      id: '0',
      name: 'SPARSH RAJPUT',
      cardDesign: 'assets/images/svg/hexa_card.svg',
      cardNumber: '**** **** **** 6789',
      chip: 'assets/images/svg/silver_chip.svg',
      expDate: '03/24',
      logo: 'assets/images/svg/mastercard_white.svg',
      type: 'Debit',
    ),
    PaymentCard(
      id: '1',
      name: 'SPARSH RAJPUT',
      cardDesign: 'assets/images/svg/symmetric_card.svg',
      cardNumber: '**** **** **** 6789',
      chip: 'assets/images/svg/silver_chip.svg',
      expDate: '03/24',
      logo: 'assets/images/svg/mastercard_white.svg',
      type: 'Debits',
    ),
    PaymentCard(
      id: '2',
      name: 'SPARSH RAJPUT',
      cardDesign: 'assets/images/svg/green_design.svg',
      cardNumber: '**** **** **** 0428',
      chip: 'assets/images/svg/gold_chip.svg',
      expDate: '06/26',
      logo: 'assets/images/svg/mastercard_logo.svg',
      type: 'Credit',
    ),
    PaymentCard(
      id: '3',
      name: 'SPARSH RAJPUT',
      cardDesign: 'assets/images/svg/purple_card.svg',
      cardNumber: '**** **** **** 2324',
      chip: 'assets/images/svg/silver_chip.svg',
      expDate: '06/25',
      logo: 'assets/images/svg/mastercard_logo.svg',
      type: 'Credit',
    ),
    PaymentCard(
      id: '4',
      name: 'SPARSH RAJPUT',
      cardDesign: 'assets/images/svg/grey_card.svg',
      cardNumber: '**** **** **** 5270',
      chip: 'assets/images/svg/silver_chip.svg',
      expDate: '05/25',
      logo: 'assets/images/svg/mastercard_white.svg',
      type: 'Credit',
    ),
  ];

  List<PaymentCard> get userCards {
    return [..._userCards];
  }

  void addCard(String number, String cvv, String date) {
    _userCards.add(PaymentCard(
      id: (_userCards.length + 1).toString(),
      name: 'SPARSH RAJPUT',
      cardDesign: 'assets/images/svg/symmetric_card.svg',
      cardNumber: '**** **** **** ${number.characters.takeLast(4).toString()}',
      chip: 'assets/images/svg/silver_chip.svg',
      expDate: date,
      logo: 'assets/images/svg/mastercard_logo.svg',
      type: 'Debit',
    ));
    notifyListeners();
  }

  void removeCard(String id) {
    final index = _userCards.indexWhere(
      (element) => element.id == id,
    );
    print(index);
    _userCards.removeAt(index);
    notifyListeners();
  }
}
