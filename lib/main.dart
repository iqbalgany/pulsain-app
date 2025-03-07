import 'package:flutter/material.dart';
import 'package:pulsain/views/navbar.dart';
import 'package:pulsain/views/screens/activity/activity_screen.dart';
import 'package:pulsain/views/screens/activity/activity_status_screen.dart';
import 'package:pulsain/views/screens/activity/activity_status_screen_pending.dart';
import 'package:pulsain/views/screens/get%20started/get_started_screen.dart';
import 'package:pulsain/views/screens/home/home_screen.dart';
import 'package:pulsain/views/screens/inbox/inbox_screen.dart';
import 'package:pulsain/views/screens/onboarding/onboarding_screen.dart';
import 'package:pulsain/views/screens/profile/profile_screen.dart';
import 'package:pulsain/views/screens/rekening/daftar_bank_screen.dart';
import 'package:pulsain/views/screens/rekening/rekening_screen.dart';
import 'package:pulsain/views/screens/rekening/tambah_rekening_screen.dart';
import 'package:pulsain/views/screens/rekening/ubah_rekening_screen.dart';
import 'package:pulsain/views/screens/splash/splash_screen.dart';
import 'package:pulsain/views/screens/terms%20and%20condition/tnc_screen.dart';
import 'package:pulsain/views/screens/tukar%20pulsa/tukar_pulsa.dart';

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
        '/onboarding': (context) => OnboardingScreen(),
        '/get-started': (context) => GetStartedScreen(),
        '/tnc': (context) => TNCScreen(),
        '/home': (context) => HomeScreen(),
        '/tukar-pulsa': (context) => TukarPulsa(),
        '/inbox': (context) => InboxScreen(),
        '/activity': (context) => ActivityScreen(),
        '/activity-status': (context) => ActivityStatusScreen(),
        '/activity-status-pending': (context) => ActivityStatusPendingScreen(),
        '/bank-account': (context) => RekeningScreen(),
        '/add-bank-account': (context) => TambahRekeningScreen(),
        '/edit-bank-account': (context) => UbahRekeningScreen(),
        '/bank-list': (context) => DaftarBankScreen(),
        '/profile': (context) => ProfileScreen(),

        /// Bottom Navigation Bar
        '/navbar': (context) => Navbar(),
      },
    );
  }
}
