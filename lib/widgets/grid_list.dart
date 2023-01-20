import 'package:flutter/material.dart';

class PageGrid extends StatefulWidget {
  const PageGrid({super.key});

  @override
  State<PageGrid> createState() => _PageGridState();
}

class _PageGridState extends State<PageGrid> {
  final List _gridData = [
    {
      'img': 'assets/images/solar_image.png',
      'txt': 'Solar',
    },
    {
      'img': 'assets/images/water_image.png',
      'txt': 'Water',
    },
    {
      'img': 'assets/images/animal_image.png',
      'txt': 'Animals',
    },
    {
      'img': 'assets/images/forest_image.png',
      'txt': 'Forest',
    },
    {
      'img': 'assets/images/environment_picture.png',
      'txt': 'Environment',
    },
    {
      'img': 'assets/images/landslide_image.png',
      'txt': 'Donations',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _gridData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                margin: const EdgeInsets.all(15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            _gridData[index]['img'],
                          ),
                          fit: BoxFit.fill),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.40),
                      ),
                      child: Center(
                        child: Text(
                          _gridData[index]['txt'],
                          style: const TextStyle(
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
