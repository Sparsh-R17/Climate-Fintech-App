import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/providers/disaster_provider.dart';
import 'host_donation_screen.dart';
import 'home_page.dart';
import '../widgets/custom_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  List<Map<String, dynamic>>? _pages;

  @override
  void initState() {
    _pages = [
      {
        'page': const HomePage(),
        'title': 'Home',
      },
      {
        'page': const HostDonationScreen(),
        'title': 'Donations',
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final disasterContainer = Provider.of<CurrentDisasterProvider>(context);
    final disaster = disasterContainer.disasterList;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: disaster[disasterContainer.cardIndex].cardColor,
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
      body: _pages![_selectedPageIndex]['page'],
      drawer: const CustomDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: true,
        selectedItemColor: disaster[disasterContainer.cardIndex].iconColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        backgroundColor: Colors.transparent,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Donations',
          ),
        ],
        onTap: (value) {
          //For Matching the carousel index with the bottom navbar
          setState(() {
            if (value == 0 && _selectedPageIndex == 1) {
              disasterContainer.changeCarousel(value);
            }
            _selectedPageIndex = value;
          });
        },
      ),
    );
  }
}
