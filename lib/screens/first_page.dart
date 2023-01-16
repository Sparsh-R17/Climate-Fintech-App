import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';

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
      body: const Center(
        child: Text('Hello'),
      ),
    );
  }
}
