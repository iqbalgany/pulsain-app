import 'package:flutter/material.dart';
import 'package:pulsain/screens/get_started_screen.dart';
import 'package:pulsain/screens/home_screen.dart';
import 'package:pulsain/screens/onboarding_1_screen.dart';
import 'package:pulsain/screens/onboarding_2_screen.dart';
import 'package:pulsain/screens/onboarding_3_screen.dart';
import 'package:pulsain/screens/splash_screen.dart';
import 'package:pulsain/screens/tnc_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/': (context) => SplashScreen(),
        '/onboarding-1': (context) => Onboarding1Screen(),
        '/onboarding-2': (context) => Onboarding2Screen(),
        '/onboarding-3': (context) => Onboarding3Screen(),
        '/get-started': (context) => GetStartedScreen(),
        '/tnc': (context) => TNCScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
