import 'package:carousel_slider/carousel_slider.dart';
import 'package:climate_fintech_app/providers/disaster_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'carousel_tile.dart';

class DisasterCarousel extends StatefulWidget {
  const DisasterCarousel({
    Key? key,
  }) : super(key: key);

  @override
  State<DisasterCarousel> createState() => _DisasterCarouselState();
}

class _DisasterCarouselState extends State<DisasterCarousel> {
  @override
  Widget build(BuildContext context) {
    final disasterContainer = Provider.of<CurrentDisasterProvider>(context);
    final disasterCard = disasterContainer.disasterList;
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: CarouselSlider.builder(
        itemCount: disasterCard.length,
        options: CarouselOptions(
          height: 400,
          aspectRatio: 16 / 9,
          initialPage: 0,
          viewportFraction: 0.75,
          enableInfiniteScroll: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          onPageChanged: ((index, reason) {
            setState(() {
              disasterContainer.changeCarousel(index);

            });
          }),
          scrollDirection: Axis.horizontal,
        ),
        itemBuilder: (context, index, realIndex) {
          return CarouselTile(
            iconAddress: disasterCard[index].iconLocation,
            disasterColor: disasterCard[index].cardColor,
            dateTime: disasterCard[index].dateTime,
            img: disasterCard[index].disasterPic,
            place: disasterCard[index].location,
            sourceDonation: disasterCard[index].source,
            disaster: disasterCard[index].disasterName,
          );
        },
      ),
    );
  }
}
