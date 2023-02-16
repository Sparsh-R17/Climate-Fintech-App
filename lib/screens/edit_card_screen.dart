import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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

var cardHolder;
var cardNumber;
var expiryDate;
int? randomNumber;

var setDesign = [
  {
    'design': 'assets/images/svg/purple_card.svg',
    'chip': 'assets/images/svg/silver_chip.svg',
    'type': 'Debit',
    'logo': 'assets/images/svg/mastercard_logo.svg',
  },
  {
    'design': 'assets/images/svg/symmetric_card.svg',
    'chip': 'assets/images/svg/silver_chip.svg',
    'type': 'Credit',
    'logo': 'assets/images/svg/logos_visa.svg',
  },
  {
    'design': 'assets/images/svg/hexa_card.svg',
    'chip': 'assets/images/svg/gold_chip.svg',
    'type': 'Credit',
    'logo': 'assets/images/svg/mastercard_white.svg',
  },
  {
    'design': 'assets/images/svg/grey_card.svg',
    'chip': 'assets/images/svg/silver_chip.svg',
    'type': 'Credit',
    'logo': 'assets/images/svg/mastercard_white.svg',
  },
  {
    'design': 'assets/images/svg/green_design.svg',
    'chip': 'assets/images/svg/gold_chip.svg',
    'type': 'Debit',
    'logo': 'assets/images/svg/mastercard_logo.svg',
  },
];

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

class AddCardOption extends StatefulWidget {
  const AddCardOption({super.key});

  @override
  State<AddCardOption> createState() => _AddCardOptionState();
}

class _AddCardOptionState extends State<AddCardOption> {
  final _nameFocusNode = FocusNode();
  final _cvvFocusNode = FocusNode();
  final _expiryFocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool formCompleted = false;
  var _newCard = PaymentCard(
    id: '',
    name: '',
    cardDesign: '',
    cardNumber: '',
    chip: '',
    expDate: '',
    logo: '',
    type: '',
  );
  //if initial values doesn't work change final to var
  final _initialValues = {
    'name': '',
    'cardNumber': '',
    'cvv': '',
    'expiryDate': '',
  };

  void _saveForm() async {
    final isValidate = formKey.currentState!.validate();
    if (!isValidate) {
      return;
    }
    formKey.currentState!.save();
    setState(() {
      formCompleted = true;
      cardHolder = _newCard.name;
      cardNumber = _newCard.cardNumber;
      expiryDate = _newCard.expDate;
      randomNumber = new Random().nextInt(5);
      print('Number Generateed $randomNumber');
    });
  }

  @override
  void dispose() {
    _nameFocusNode.dispose();
    _cvvFocusNode.dispose();
    _expiryFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: pageHeight * 0.02,
        ),
        Text(
          formCompleted
              ? 'Do you want to continue ?'
              : 'Enter Details Before Continuing',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey.shade400,
          ),
          margin: EdgeInsets.symmetric(
            horizontal: pageWidth * 0.025,
            vertical: pageHeight * 0.03,
          ),
          height: pageHeight * 0.27,
          width: pageWidth * 0.95,
          child: Stack(
            children: [
              Container(
                height: pageHeight * 0.27,
                width: pageWidth * 0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xff009245),
                      Color(0xffFCEE21),
                    ],
                  ),
                ),
                child: formCompleted
                    ? null
                    : Form(
                        key: formKey,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: pageWidth * 0.05,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: pageHeight * 0.007,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: pageHeight * 0.005,
                                ),
                                child: Text(
                                  'Card Number',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: pageWidth * 0.6,
                                // height: pageHeight * 0.04,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: pageHeight * 0.01,
                                      horizontal: pageWidth * 0.03,
                                    ),
                                    isDense: true,
                                    fillColor: Colors.white.withOpacity(
                                      .40,
                                    ),
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    hintText: '0000 0000 0000 0000',
                                    hintStyle: GoogleFonts.poppins(
                                      color: Colors.white.withOpacity(.73),
                                      fontSize: 16,
                                    ),
                                  ),
                                  initialValue: _initialValues['cardNumber'],
                                  textInputAction: TextInputAction.next,
                                  onFieldSubmitted: (_) {
                                    FocusScope.of(context)
                                        .requestFocus(_nameFocusNode);
                                  },
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Field Cannot Be Empty';
                                    }
                                    return null;
                                  },
                                  onSaved: (newValue) {
                                    _newCard = PaymentCard(
                                        id: _newCard.id,
                                        name: _newCard.name,
                                        cardDesign: _newCard.cardDesign,
                                        cardNumber: newValue!,
                                        chip: _newCard.chip,
                                        expDate: _newCard.expDate,
                                        logo: _newCard.logo,
                                        type: _newCard.type);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: pageHeight * 0.007,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Name',
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: pageWidth * 0.6,
                                        // height: pageHeight * 0.06,
                                        child: TextFormField(
                                          textInputAction: TextInputAction.next,
                                          initialValue: _initialValues['name'],
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                              vertical: pageHeight * 0.01,
                                              horizontal: pageWidth * 0.03,
                                            ),
                                            isDense: true,
                                            fillColor: Colors.white.withOpacity(
                                              .40,
                                            ),
                                            filled: true,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              borderSide: BorderSide.none,
                                              // borderSide: const BorderSide(
                                              //   color: Colors.white,
                                              // ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            // label: Text('Name'),
                                            hintText: 'e.g. Aman Kumar',
                                            hintStyle: GoogleFonts.poppins(
                                              color:
                                                  Colors.white.withOpacity(.73),
                                              fontSize: 16,
                                            ),
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Field Cannot Be Empty';
                                            }
                                            return null;
                                          },
                                          onFieldSubmitted: (_) {
                                            FocusScope.of(context)
                                                .requestFocus(_expiryFocusNode);
                                          },
                                          focusNode: _nameFocusNode,
                                          onSaved: (newValue) {
                                            _newCard = PaymentCard(
                                                id: _newCard.id,
                                                name: newValue!,
                                                cardDesign: _newCard.cardDesign,
                                                cardNumber: _newCard.cardNumber,
                                                chip: _newCard.chip,
                                                expDate: _newCard.expDate,
                                                logo: _newCard.logo,
                                                type: _newCard.type);
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: pageHeight * 0.025,
                                      // right: pageWidth * 0.01,
                                    ),
                                    child: SizedBox(
                                      width: pageWidth * 0.18,
                                      height: pageHeight * 0.06,
                                      child: SvgPicture.asset(
                                        'assets/images/svg/edit_chip.svg',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: pageHeight * 0.007,
                              ),
                              Text(
                                'Expiration Date',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: pageWidth * 0.2,
                                // height: pageHeight * 0.06,
                                child: TextFormField(
                                  focusNode: _expiryFocusNode,
                                  onFieldSubmitted: (_) {
                                    _saveForm();
                                  },
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Field Cannot Be Empty';
                                    }
                                    return null;
                                  },
                                  textInputAction: TextInputAction.done,
                                  initialValue: _initialValues['expiryDate'],
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: pageHeight * 0.01,
                                      horizontal: pageWidth * 0.03,
                                    ),
                                    isDense: true,
                                    fillColor: Colors.white.withOpacity(
                                      .40,
                                    ),
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                      // borderSide: const BorderSide(
                                      //   color: Colors.white,
                                      // ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    hintText: 'MM / YY',
                                    hintStyle: GoogleFonts.poppins(
                                      color: Colors.white.withOpacity(.73),
                                      fontSize: 14,
                                    ),
                                  ),
                                  onSaved: (newValue) {
                                    _newCard = PaymentCard(
                                        id: _newCard.id,
                                        name: _newCard.name,
                                        cardDesign: _newCard.cardDesign,
                                        cardNumber: _newCard.cardNumber,
                                        chip: _newCard.chip,
                                        expDate: newValue!,
                                        logo: _newCard.logo,
                                        type: _newCard.type);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
              //^ Card when Form is completed
              if (formCompleted) CardDecided(),
            ],
          ),
        ),
        // ^ Submit form
        if (formCompleted)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.green,
                  ),
                ),
                onPressed: () {
                  Provider.of<PaymentCardProvider>(context, listen: false)
                      .addCard(
                          cardNumber,
                          expiryDate,
                          cardHolder,
                          setDesign[randomNumber!]['chip']!,
                          setDesign[randomNumber!]['type']!,
                          setDesign[randomNumber!]['logo']!,
                          setDesign[randomNumber!]['design']!);
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Submit',
                  style: GoogleFonts.poppins(),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    randomNumber = new Random().nextInt(5);
                  });
                  // _saveForm();
                },
                child: Text(
                  'Refresh',
                  style: GoogleFonts.poppins(),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.red.shade400,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    formCompleted = false;
                  });
                  // Navigator.of(context).pop();
                },
                child: Text(
                  'Cancel',
                  style: GoogleFonts.poppins(),
                ),
              ),
            ],
          ),
      ],
    );
  }
}

class CardDecided extends StatelessWidget {
  const CardDecided({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        SizedBox(
          height: pageHeight * 0.27,
          width: pageWidth * 0.95,
          child: SvgPicture.asset(
            setDesign[randomNumber!]['design']!,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: pageHeight * 0.27,
          width: pageWidth * 0.95,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.025,
                  right: MediaQuery.of(context).size.width * 0.05,
                ),
                child: Text(
                  setDesign[randomNumber!]['type']!,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.022,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.09,
                      height: MediaQuery.of(context).size.height * 0.03,
                      child: SvgPicture.asset(
                        setDesign[randomNumber!]['chip']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          cardNumber,
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'VALID',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'THRU',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.015,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        expiryDate,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.033,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cardHolder,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.027,
                      width: MediaQuery.of(context).size.width * 0.12,
                      child: SvgPicture.asset(
                        setDesign[randomNumber!]['logo']!,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// class AddCardOption extends StatelessWidget {
//   const AddCardOption({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final _formKey = GlobalKey<FormState>();
//     final numberController = TextEditingController();
//     final cvvController = TextEditingController();
//     final dateController = TextEditingController();
//     final nameController = TextEditingController();
//     return SingleChildScrollView(
//       child: Form(
//         autovalidateMode: AutovalidateMode.always,
//         key: _formKey,
//         child: Column(
//           children: [
//             formFieldCard(
//               context,
//               nameController,
//               'Name',
//             ),
//             formFieldCard(
//               context,
//               numberController,
//               'Card Number',
//             ),
//             formFieldCard(
//               context,
//               cvvController,
//               'CVV Number',
//             ),
//             formFieldCard(
//               context,
//               dateController,
//               'Expiry date',
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 print('hi');
//                 Provider.of<PaymentCardProvider>(context, listen: false)
//                     .addCard(
//                   numberController.text,
//                   cvvController.text,
//                   dateController.text,
//                   nameController.text,
//                 );
//                 Navigator.pop(context);
//               },
//               child: const Text('SUMBIT'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

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
