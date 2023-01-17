import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '/config/drawer_data.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/carousel_tile.dart';
import '../config/disaster_data.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xfffafafa),
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(bottom: 4),
          child: Text(
            '@username',
            style: TextStyle(color: Colors.black),
          ),
        ),
        leadingWidth: 30,
      ),
      drawer: const CustomDrawer(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: CarouselSlider.builder(
          itemCount: drawerList.length,
          options: CarouselOptions(
            height: 400,
            aspectRatio: 16 / 9,
            initialPage: 0,
            viewportFraction: 0.75,
            enableInfiniteScroll: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            // onPageChanged: () {},
            scrollDirection: Axis.horizontal,
          ),
          itemBuilder: (context, index, realIndex) {
            return CarouselTile(
              iconAddress: disasterList[index].iconLocation,
              disasterColor: disasterList[index].cardColor,
              dateTime: disasterList[index].dateTime,
              img: disasterList[index].disasterPic,
              place: disasterList[index].location,
              sourceDonation: disasterList[index].source,
              disaster: disasterList[index].disasterName,
            );
          },
        ),
      ),
    );
  }
}
