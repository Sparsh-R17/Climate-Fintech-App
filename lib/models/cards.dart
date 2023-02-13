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
    cardDesign: 'assets/images/svg/symmetric_card.svg',
    cardNumber: '**** **** **** 6789',
    chip: 'assets/images/svg/silver_chip.svg',
    expDate: '03/24',
    logo: 'assets/images/svg/mastercard_white.svg',
    type: 'Debits',
  )
];
