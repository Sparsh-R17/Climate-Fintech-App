import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageGrid extends StatefulWidget {
  const PageGrid({super.key});

  @override
  State<PageGrid> createState() => _PageGridState();
}

class _PageGridState extends State<PageGrid> {
  List<String> img = [
    'assets/images/solar_image.png',
    'assets/images/water_image.png',
    'assets/images/animal_image.png',
    'assets/images/forest_image.png',
    'assets/images/environment_picture.png',
    'assets/images/landslide_image.png',
    
  ];
  List<String> txt = [
    'Solar',
    'Water',
    'Animals',
    'Forest',
    
    'Environment',
    'Donations',
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (() {
                print('Pressed');
              }),
              child: Container(
                margin: EdgeInsets.all(15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            img[index],
                          ),
                          fit: BoxFit.fill),
                    ),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.black.withOpacity(0.40)),
                      child: Center(
                        child: Text(
                          txt[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
