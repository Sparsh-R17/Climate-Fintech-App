import 'package:climate_fintech_app/models/donation.dart';
import 'package:flutter/material.dart';

import 'package:climate_fintech_app/config/colors.dart';
import 'package:provider/provider.dart';

import '../widgets/view_donation.dart';

class ViewDonationScreen extends StatelessWidget {
  static const routeName = '/view-donation';
  const ViewDonationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final donation = Provider.of<DonationProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.iconBrown,
        title: const Text('Host Donation'),
      ),
      body: ListView.builder(
        itemCount: donation.hostDonation.length,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.02,
        ),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.01,
            ),
            child: ViewDonation(
              amt: donation.hostDonation[index].amt,
              name: donation.hostDonation[index].name,
            ),
          );
        },
      ),
    );
  }
}
