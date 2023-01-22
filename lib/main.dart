import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '/screens/info_page.dart';
import '/widgets/company_list.dart';
import '/screens/tabs_screen.dart';
import 'providers/disaster_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  ).then(
    (value) => runApp(
      const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CurrentDisasterProvider(),
      child: MaterialApp(
        title: 'CFA',
        theme: ThemeData(
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        routes: {
          '/': (context) => const TabsScreen(),
          CompanyList.routeName: (context) => const CompanyList(),
        },
      ),
    );
  }
}
