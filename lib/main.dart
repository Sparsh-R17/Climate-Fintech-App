import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/config/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => runApp(
      const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'CFA',
      home: MainPage(),
    );
  }
}

List<Color> colorTesting = [
  AppColor.blue,
  AppColor.brown,
  AppColor.green,
  AppColor.grey,
  AppColor.lightBrown,
  AppColor.pink,
  AppColor.yellow,
];

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CFA'),
      ),
      body: ListView.builder(
        itemCount: colorTesting.length,
        itemBuilder: (ctx, i) {
          return Center(
            child: Container(
              margin: const EdgeInsets.all(20),
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: colorTesting[i],
              ),
              child: const Center(
                child: Text('Testing'),
              ),
            ),
          );
        },
      ),
    );
  }
}
