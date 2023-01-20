import 'package:flutter/material.dart';

import '/widgets/grid_list.dart';
import '../widgets/disaster_carousel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: const [
              DisasterCarousel(),
              SizedBox(
                height: 30,
              ),
              PageGrid()
            ],
          ),
        ),
      ),
    );
  }
}
