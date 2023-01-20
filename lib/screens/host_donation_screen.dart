import 'package:flutter/material.dart';

import '/screens/tabs_screen.dart';
import '/models/donation.dart';

class HostDonationScreen extends StatefulWidget {
  const HostDonationScreen({super.key});

  @override
  State<HostDonationScreen> createState() => _HostDonationScreenState();
}

class _HostDonationScreenState extends State<HostDonationScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController agecontroller = TextEditingController();
  final TextEditingController mobilecontroller = TextEditingController();
  final TextEditingController banknamecontroller = TextEditingController();
  final TextEditingController accnumcontroller = TextEditingController();
  final TextEditingController pannumcontroller = TextEditingController();
  final TextEditingController ifsccontroller = TextEditingController();
  final TextEditingController amtcontroller = TextEditingController();

  Padding formField(
    BuildContext context,
    TextEditingController varcontroller,
    String boxReason,
  ) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.08,
        right: MediaQuery.of(context).size.width * 0.08,
        bottom: MediaQuery.of(context).size.height * 0.03,
      ),
      child: TextFormField(
        controller: varcontroller,
        validator: (value) {
          if (varcontroller == mobilecontroller) {
            if (value!.isEmpty) {
              return '$boxReason cannot be empty';
            }
            if (value.length != 10) {
              return 'Mobile Number should be of exact 10 digits';
            } else {
              return null;
            }
          } else {
            if (value!.isEmpty) {
              return '$boxReason cannot be empty';
            } else {
              return null;
            }
          }
        },
        decoration: InputDecoration(
          label: Text(boxReason),
          hintText: 'Enter your $boxReason',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('ENTER YOUR DETAILS TO HOST DONATIONS'),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              formField(context, namecontroller, 'Name'),
              formField(context, agecontroller, 'Age'),
              formField(context, mobilecontroller, 'Mobile Number'),
              formField(context, banknamecontroller, 'Bank Name'),
              formField(context, accnumcontroller, 'Account Number'),
              formField(context, ifsccontroller, 'IFSC Code'),
              formField(context, pannumcontroller, 'Pan Number'),
              formField(context, amtcontroller, 'Amount'),
              ElevatedButton(
                onPressed: () {
                  print(_formKey.currentState!.validate());
                  if (_formKey.currentState!.validate() == true) {
                    hostDonation.add(
                      Donation(
                        amt: amtcontroller.text,
                        name: namecontroller.text,
                        age: agecontroller.text,
                        mobile: mobilecontroller.text,
                        bankName: banknamecontroller.text,
                        accNum: accnumcontroller.text,
                        panNum: pannumcontroller.text,
                        ifsc: ifsccontroller.text,
                      ),
                    );
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Donation Hosted Successfully'),
                        content: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: Column(
                            children: [
                              Text('Name: ${namecontroller.text}'),
                              Text('Age: ${agecontroller.text}'),
                              Text('Mobile Number: ${mobilecontroller.text}'),
                              Text('Bank Name: ${banknamecontroller.text}'),
                              Text('Account No.: ${accnumcontroller.text}'),
                              Text('IFSC Code: ${ifsccontroller.text}'),
                              Text('Pan Number: ${pannumcontroller.text}'),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const TabsScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Kindly check the details Entered'),
                        actions: [
                          TextButton(
                            child: const Text('Ok'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      ),
                    );
                  }
                },
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
