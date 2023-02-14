import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cards.dart';
import '../widgets/card_design.dart';

class PaymentCardScreen extends StatefulWidget {
  static const routeName = '/PaymentCardScreen';
  const PaymentCardScreen({super.key});

  @override
  State<PaymentCardScreen> createState() => _PaymentCardScreenState();
}

class _PaymentCardScreenState extends State<PaymentCardScreen> {
  @override
  Widget build(BuildContext context) {
    final userCardData = Provider.of<PaymentCardProvider>(context).userCards;
    return SizedBox(
      // height: MediaQuery.of(context).size.height * 0.3,
      child: CarouselSlider.builder(
        itemCount: userCardData.length,
        options: CarouselOptions(
          aspectRatio: 2,
          initialPage: 0,
          viewportFraction: 0.75,
          enableInfiniteScroll: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
        ),
        itemBuilder: (context, index, realIndex) {
          return CardDesign(
            id: userCardData[index].id,
            editAccess: false,
            cardDesign: userCardData[index].cardDesign,
            cardNumber: userCardData[index].cardNumber,
            chip: userCardData[index].chip,
            expDate: userCardData[index].expDate,
            name: userCardData[index].name,
            logo: userCardData[index].logo,
            type: userCardData[index].type,
          );
        },
      ),
    );
  }
}
