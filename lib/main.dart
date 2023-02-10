import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'providers/disaster_provider.dart';

import '/models/donation.dart';
import './screens/view_donation_screen.dart';
import '/screens/company_info_screen.dart';

import '/screens/forget_password.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CurrentDisasterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DonationProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'CFA',
        theme: ThemeData(
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        routes: {
          '/': (context) => const TabsScreen(),
          ViewDonationScreen.routeName: (context) => const ViewDonationScreen(),
          LoginPage.routeName: (context) => const LoginPage(),
          SignUp.routeName: (context) => const SignUp(),
          ForgetPassword.routeName: (context) => const ForgetPassword(),
          CompanyList.routeName: (context) => const CompanyList(),
          CompanyInfoScreen.routeName: (context) => const CompanyInfoScreen(),
          PaymentPage.routeName: (context) => PaymentPage(),
        },
      ),
    );
  }
}
