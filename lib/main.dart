import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'providers/disaster_provider.dart';

import '/screens/company_info_screen.dart';
import '/screens/payment.dart';
import 'screens/company_list.dart';
import '/screens/tabs_screen.dart';
import './screens/login.dart';
import './screens/signup.dart';

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
          LoginPage.routeName: (context) => const LoginPage(),
          SignUp.routeName: (context) => const SignUp(),
          CompanyList.routeName: (context) => const CompanyList(),
          CompanyInfoScreen.routeName: (context) => const CompanyInfoScreen(),
          PaymentPage.routeName: (context) => const PaymentPage(),
        },
      ),
    );
  }
}
