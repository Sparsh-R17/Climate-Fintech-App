class PaymentCard {
  final String name;
  final String cardDesign;
  final String type;
  final String cardNumber;
  final String expDate;
  final String chip;
  final String logo;

  PaymentCard({
    required this.name,
    required this.cardDesign,
    required this.cardNumber,
    required this.chip,
    required this.expDate,
    required this.logo,
    required this.type,
  });
}

List<PaymentCard> userCards = [
  PaymentCard(
    name: 'SPARSH RAJPUT',
    cardDesign: 'assets/images/svg/hexa_card.svg',
    cardNumber: '**** **** **** 6789',
    chip: 'assets/images/svg/silver_chip.svg',
    expDate: '03/24',
    logo: 'assets/images/svg/mastercard_white.svg',
    type: 'Debit',
  ),
  PaymentCard(
    name: 'SPARSH RAJPUT',
    cardDesign: 'assets/images/svg/symmetric_card.svg',
    cardNumber: '**** **** **** 6789',
    chip: 'assets/images/svg/silver_chip.svg',
    expDate: '03/24',
    logo: 'assets/images/svg/mastercard_white.svg',
    type: 'Debits',
  ),
  PaymentCard(
    name: 'SPARSH RAJPUT',
    cardDesign: 'assets/images/svg/green_design.svg',
    cardNumber: '**** **** **** 0428',
    chip: 'assets/images/svg/gold_chip.svg',
    expDate: '06/26',
    logo: 'assets/images/svg/mastercard_logo.svg',
    type: 'Credit',
  ),
  PaymentCard(
    name: 'SPARSH RAJPUT',
    cardDesign: 'assets/images/svg/purple_card.svg',
    cardNumber: '**** **** **** 2324',
    chip: 'assets/images/svg/silver_chip.svg',
    expDate: '06/25',
    logo: 'assets/images/svg/mastercard_logo.svg',
    type: 'Credit',
  ),
  PaymentCard(
    name: 'SPARSH RAJPUT',
    cardDesign: 'assets/images/svg/grey_card.svg',
    cardNumber: '**** **** **** 5270',
    chip: 'assets/images/svg/silver_chip.svg',
    expDate: '05/25',
    logo: 'assets/images/svg/mastercard_white.svg',
    type: 'Credit',
  ),
];
