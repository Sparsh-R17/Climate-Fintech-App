import 'package:climate_fintech_app/widgets/grid_list.dart';
import 'package:flutter/material.dart';

import '../widgets/disaster_carousel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          DisasterCarousel(),
          SizedBox(
            height: 30,
          ),
          PageGrid()
        ],
      ),
    );
  }
}
