import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  static const routeName = '/payment-page';
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final amt = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Page'),
      ),
      body: Center(
        child: Text('Payment of Rs.$amt to be done'),
      ),
    );
  }
}
