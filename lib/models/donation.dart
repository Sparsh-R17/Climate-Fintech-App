class Donation {
  final String name;
  final String age;
  final String mobile;
  final String bankName;
  final String accNum;
  final String panNum;
  final String ifsc;
  final String amt;

  Donation({
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

List<Donation> hostDonation = [];
