import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../models/cards.dart';

class CardDesign extends StatelessWidget {
  final String id;
  final bool editAccess;
  final String name;
  final String cardDesign;
  final String type;
  final String cardNumber;
  final String expDate;
  final String chip;
  final String logo;
  const CardDesign({
    super.key,
    required this.name,
    required this.cardDesign,
    required this.type,
    required this.cardNumber,
    required this.expDate,
    required this.chip,
    required this.logo,
    required this.id,
    required this.editAccess,
  });

  @override
  Widget build(BuildContext context) {
    return editAccess
        ? Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              Provider.of<PaymentCardProvider>(context, listen: false)
                  .removeCard(id);
            },
            confirmDismiss: (direction) {
              return showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                        title: const Text('Are you sure ?'),
                        content: const Text(
                            'Do you want to remove the item from the cart ?'),
                        actions: [
                          TextButton(
                            child: const Text('NO'),
                            onPressed: () => Navigator.pop(context, false),
                          ),
                          TextButton(
                            child: const Text('YES'),
                            onPressed: () => Navigator.pop(context, true),
                          ),
                        ],
                      ));
            },
            background: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.error,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 30),
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 4,
              ),
              child: const Icon(
                Icons.delete,
                color: Colors.white,
                size: 40,
              ),
            ),
            child: CardDesignEdit(
              cardDesign: cardDesign,
              type: type,
              chip: chip,
              cardNumber: cardNumber,
              expDate: expDate,
              name: name,
              logo: logo,
            ),
          )
        : CardDesignEdit(
            cardDesign: cardDesign,
            type: type,
            chip: chip,
            cardNumber: cardNumber,
            expDate: expDate,
            name: name,
            logo: logo,
          );
  }
}

class CardDesignEdit extends StatelessWidget {
  const CardDesignEdit({
    super.key,
    required this.cardDesign,
    required this.type,
    required this.chip,
    required this.cardNumber,
    required this.expDate,
    required this.name,
    required this.logo,
  });

  final String cardDesign;
  final String type;
  final String chip;
  final String cardNumber;
  final String expDate;
  final String name;
  final String logo;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.58,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: 1.58,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: SvgPicture.asset(
                    cardDesign,
                  ),
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 16 / 11,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.025,
                        right: MediaQuery.of(context).size.width * 0.05,
                      ),
                      child: Text(
                        type,
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
                              chip,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.33,
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
                              expDate,
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
                      height: MediaQuery.of(context).size.height * 0.013,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.027,
                            width: MediaQuery.of(context).size.width * 0.12,
                            child: SvgPicture.asset(
                              logo,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
