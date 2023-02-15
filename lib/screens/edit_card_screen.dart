import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../models/cards.dart';
import '../widgets/card_design.dart';

class EditCardScreen extends StatefulWidget {
  static const routeName = '/edit-card';
  const EditCardScreen({super.key});

  @override
  State<EditCardScreen> createState() => _EditCardScreenState();
}

class _EditCardScreenState extends State<EditCardScreen> {
  bool _addCard = false;

  @override
  Widget build(BuildContext context) {
    final cards = Provider.of<PaymentCardProvider>(context).userCards;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Card'),
        actions: [
          _addCard
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _addCard = false;
                    });
                  },
                  icon: const Icon(Icons.close),
                )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      _addCard = true;
                    });
                  },
                  icon: const Icon(Icons.add),
                ),
        ],
      ),
      body: _addCard ? const AddCardOption() : const EditCardOption(),
    );
  }
}

class AddCardOption extends StatelessWidget {
  const AddCardOption({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final numberController = TextEditingController();
    final cvvController = TextEditingController();
    final dateController = TextEditingController();
    final nameController = TextEditingController();
    return SingleChildScrollView(
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        key: _formKey,
        child: Column(
          children: [
            formFieldCard(
              context,
              nameController,
              'Name',
            ),
            formFieldCard(
              context,
              numberController,
              'Card Number',
            ),
            formFieldCard(
              context,
              cvvController,
              'CVV Number',
            ),
            formFieldCard(
              context,
              dateController,
              'Expiry date',
            ),
            ElevatedButton(
              onPressed: () {
                print('hi');
                Provider.of<PaymentCardProvider>(context, listen: false)
                    .addCard(
                  numberController.text,
                  cvvController.text,
                  dateController.text,
                  nameController.text,
                );
                Navigator.pop(context);
              },
              child: const Text('SUMBIT'),
            ),
          ],
        ),
      ),
    );
  }

  Padding formFieldCard(
      BuildContext context, TextEditingController varcontroller, String label) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.08,
        right: MediaQuery.of(context).size.width * 0.08,
        bottom: MediaQuery.of(context).size.height * 0.03,
        top: MediaQuery.of(context).size.height * 0.03,
      ),
      child: TextFormField(
        controller: varcontroller,
        decoration: InputDecoration(
          label: Text(label),
          hintText: 'Enter $label',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}

class EditCardOption extends StatelessWidget {
  const EditCardOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cards = Provider.of<PaymentCardProvider>(context).userCards;
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.015,
      ),
      child: ListView.builder(
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return AspectRatio(
            aspectRatio: 1.58,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.03,
                vertical: MediaQuery.of(context).size.height * 0.015,
              ),
              child: CardDesign(
                id: cards[index].id,
                editAccess: true,
                cardDesign: cards[index].cardDesign,
                cardNumber: cards[index].cardNumber,
                chip: cards[index].chip,
                expDate: cards[index].expDate,
                name: cards[index].name,
                logo: cards[index].logo,
                type: cards[index].type,
              ),
            ),
          );
        },
      ),
    );
  }
}
