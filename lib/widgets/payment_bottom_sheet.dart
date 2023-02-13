import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/payment.dart';

class AmountBottomSheet extends StatelessWidget {
  const AmountBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final amtController = TextEditingController();
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        margin:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        height: MediaQuery.of(context).size.height * 0.35,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              'Enter the Amount',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.02,
                horizontal: MediaQuery.of(context).size.width * 0.1,
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: amtController,
                decoration: InputDecoration(
                  hintText: 'Enter the Amount',
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  prefixIcon: const Icon(
                    Icons.monetization_on_outlined,
                  ),
                  label: const Text('Amount'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Container(
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.1,
              ),
              width: MediaQuery.of(context).size.width * 0.7,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(
                    PaymentPage.routeName,
                    arguments: amtController.text,
                  );
                },
                child: const Text('PAY'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
