import 'package:flutter/material.dart';

import '../models/causes.dart';
import 'package:flutter/cupertino.dart';

List<Causes> causesList = [
  Causes(
      id: '1',
      title: 'Solar',
      img: 'assets/images/png/solar_image.png',
      backColor: const Color.fromARGB(255, 255, 202, 158),
      frontColor: const Color.fromARGB(255, 241, 168, 106)),
  Causes(
      id: '2',
      title: 'Water',
      img: 'assets/images/png/water_image.png',
      backColor: const Color.fromARGB(255, 201, 227, 227),
      frontColor: const Color.fromARGB(255, 93, 176, 176)),
  Causes(
      id: '3',
      title: 'Animals',
      img: 'assets/images/png/animals_image.png',
      backColor: const Color.fromARGB(255, 209, 188, 202),
      frontColor: const Color.fromARGB(255, 195, 138, 176)),
  Causes(
    id: '4',
    title: 'Forest',
    img: 'assets/images/png/forest_image.png',
    backColor: const Color.fromARGB(255, 194, 214, 189),
    frontColor: const Color.fromARGB(255, 119, 208, 97),
  ),
  Causes(
      id: '5',
      title: 'Environment',
      img: 'assets/images/png/environment_image.png',
      backColor: const Color.fromARGB(255, 152, 216, 200),
      frontColor: const Color.fromARGB(255, 80, 186, 159)),
  Causes(
      id: '6',
      title: 'Donations',
      img: 'assets/images/png/donations_image.png',
      backColor: const Color.fromARGB(255, 239, 227, 166),
      frontColor: const Color.fromARGB(255, 237, 214, 85)),
];
