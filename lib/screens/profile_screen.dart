import '/screens/payment_card_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/profile_tile.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/ProfileScreen';

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _viewCard = false;
  List tileData = [
    {
      'icon': Icons.date_range,
      'tileTitle': 'D.O.B.',
      'data': '13/12/2002',
    },
    {
      'icon': Icons.phone,
      'tileTitle': 'Mobile No.',
      'data': '9898989898',
    },
    {
      'icon': Icons.mail,
      'tileTitle': 'Email ID',
      'data': 'trial@xyz.com',
    },
    {
      'icon': Icons.person,
      'tileTitle': 'Gender',
      'data': 'Male',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: pageHeight * 0.31,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(130),
                    bottomRight: Radius.circular(130),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        AssetImage('assets/images/png/profilecard_image.png'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: pageHeight * 0.02,
                  left: pageWidth * 0.05,
                  right: pageWidth * 0.05,
                ),
                width: pageWidth * 0.9,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(
                          Icons.home,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          //TODO ADD LOGOUT FUNCTION HERE
                        },
                        icon: const Icon(
                          Icons.exit_to_app,
                          size: 30,
                        ),
                      )
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: pageHeight * 0.14,
                ),
                // height: pageHeight * 1.37,
                // color: Colors.red,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: pageHeight * 0.3,
                      width: pageHeight * 0.3,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 10), // changes position of shadow
                          ),
                        ],
                        color: const Color.fromARGB(255, 250, 250, 250),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: pageHeight * 0.04,
                          ),
                          const CircleAvatar(
                            radius: 60,
                            foregroundImage: AssetImage(
                                'assets/images/png/Profile Picture.png'),
                          ),
                          SizedBox(
                            height: pageHeight * 0.02,
                          ),
                          Text(
                            'Sparsh Rajput',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            '@username',
                            style: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 134, 134, 134),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: pageHeight * 0.04,
                    ),
                    Column(
                      children: tileData.map((value) {
                        return ProfileTile(
                          tileIcon: value['icon'],
                          tileTitle: value['tileTitle'],
                          tileData: value['data'],
                        );
                      }).toList(),
                    ),
                    SizedBox(
                      height: pageHeight * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _viewCard = !_viewCard;
                        });
                      },
                      child: Container(
                        width: pageWidth * 0.9,
                        margin:
                            EdgeInsets.symmetric(horizontal: pageWidth * 0.04),
                        padding: EdgeInsets.only(left: pageWidth * 0.04),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _viewCard ? 'Hide Cards' : 'Show Saved Cards',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: EdgeInsets.only(
                                right: pageWidth * 0.02,
                              ),
                              child: Visibility(
                                visible: _viewCard,
                                child: GestureDetector(
                                    onTap: () {
                                      //TODO navigate to changes in card
                                    },
                                    child: const Icon(Icons.edit)),
                              ),
                            ),
                            Icon(
                              _viewCard
                                  ? Icons.expand_less_rounded
                                  : Icons.expand_more_rounded,
                              color: const Color.fromARGB(255, 134, 134, 134),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: pageHeight * 0.02,
                    ),
                    Visibility(
                      visible: _viewCard,
                      child: const PaymentCardScreen(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
