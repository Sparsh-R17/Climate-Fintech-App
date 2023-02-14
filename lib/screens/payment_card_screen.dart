import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
    return SizedBox(
      // height: MediaQuery.of(context).size.height * 0.3,
      child: CarouselSlider.builder(
        itemCount: userCards.length,
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
            cardDesign: userCards[index].cardDesign,
            cardNumber: userCards[index].cardNumber,
            chip: userCards[index].chip,
            expDate: userCards[index].expDate,
            name: userCards[index].name,
            logo: userCards[index].logo,
            type: userCards[index].type,
          );
        },
      ),
    );
  }
}
