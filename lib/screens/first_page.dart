import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('CFA'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('Hello'),
      ),
    );
  }
}
