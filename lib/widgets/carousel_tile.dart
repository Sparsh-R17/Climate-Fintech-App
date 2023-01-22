import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CarouselTile extends StatelessWidget {
  final String iconAddress;
  final Color disasterColor;
  final String img;
  final String disaster;
  final String place;
  final String sourceDonation;
  final DateTime dateTime;

  const CarouselTile({
    super.key,
    required this.disasterColor,
    required this.iconAddress,
    required this.img,
    required this.place,
    required this.sourceDonation,
    required this.dateTime,
    required this.disaster,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width * 0.76,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: disasterColor,
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.76,
                height: MediaQuery.of(context).size.height * 0.185,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  // color: AppColor.blue,
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: Image.asset(
                    img,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 4.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Image.asset(
                        iconAddress,
                        scale: 0.8,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(disaster),
                        Text(place),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DateFormat.yMMMd().format(dateTime),
                        ),
                        Text(sourceDonation),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
