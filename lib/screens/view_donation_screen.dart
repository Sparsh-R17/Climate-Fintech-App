import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../config/colors.dart';

import '../models/donation.dart';
import '../widgets/view_donation.dart';

class ViewDonationScreen extends StatefulWidget {
  static const routeName = '/view-donation';
  const ViewDonationScreen({super.key});

  @override
  State<ViewDonationScreen> createState() => _ViewDonationScreenState();
}

class _ViewDonationScreenState extends State<ViewDonationScreen> {
  bool _isLoading = false;
  @override
  void initState() {
    setState(() {
      _isLoading = true;
    });

    Provider.of<DonationProvider>(context, listen: false)
        .fetchDonation()
        .then((_) {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final donationContainer = Provider.of<DonationProvider>(context);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.iconBrown,
        title: const Text('Host Donation'),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: donationContainer.hostDonation.length,
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02,
              ),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01,
                  ),
                  child: ViewDonation(
                    amt: donationContainer.hostDonation[index].amt,
                    name: donationContainer.hostDonation[index].name,
                  ),
                );
              },
            ),
    );
  }
}
