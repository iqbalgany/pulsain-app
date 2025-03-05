import 'package:flutter/material.dart';
import 'package:pulsain/navbar.dart';
import 'package:pulsain/screens/get_started_screen.dart';
import 'package:pulsain/screens/home_screen.dart';
import 'package:pulsain/screens/inbox_screen.dart';
import 'package:pulsain/screens/onboarding_1_screen.dart';
import 'package:pulsain/screens/splash_screen.dart';
import 'package:pulsain/screens/tnc_screen.dart';
import 'package:pulsain/screens/tukar_pulsa.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/onboarding-1': (context) => OnboardingScreen(),
        '/get-started': (context) => GetStartedScreen(),
        '/tnc': (context) => TNCScreen(),
        '/home': (context) => HomeScreen(),
        '/tukar-pulsa': (context) => TukarPulsa(),
        '/inbox': (context) => InboxScreen(),

        /// Bottom Navigation Bar
        '/navbar': (context) => Navbar(),
      },
    );
  }
}
