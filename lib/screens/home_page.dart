import 'package:climate_fintech_app/widgets/page_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/widgets/grid_list.dart';
import '../widgets/disaster_carousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool currentDisaster = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: currentDisaster ? 10 : 20,
              ),
              currentDisaster
                  ? const DisasterCarousel()
                  : Text(
                      'No Current Disasters',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
              currentDisaster
                  ? const PageGrid()
                  : const Expanded(
                      child: PageList(),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
