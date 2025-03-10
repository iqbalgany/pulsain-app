import 'package:flutter/material.dart';
import 'package:pulsain/views/screens/splash/splash_screen.dart';

import '../views/navbar.dart';
import '../views/screens/activity/activity_screen.dart';
import '../views/screens/activity/activity_status_pending_screen.dart';
import '../views/screens/activity/activity_status_screen.dart';
import '../views/screens/chat/chat_screen.dart';
import '../views/screens/get started/get_started_screen.dart';
import '../views/screens/home/home_screen.dart';
import '../views/screens/inbox/inbox_screen.dart';
import '../views/screens/onboarding/onboarding_screen.dart';
import '../views/screens/profile/contact_screen.dart';
import '../views/screens/profile/profile_screen.dart';
import '../views/screens/rekening/daftar_bank_screen.dart';
import '../views/screens/rekening/rekening_screen.dart';
import '../views/screens/rekening/tambah_rekening_screen.dart';
import '../views/screens/rekening/ubah_rekening_screen.dart';
import '../views/screens/terms and condition/tnc_screen.dart';
import '../views/screens/tukar pulsa/daftar_rekening_screen.dart';
import '../views/screens/tukar pulsa/tukar_pulsa_check_screen.dart';
import '../views/screens/tukar pulsa/tukar_pulsa_invoice_screen.dart';
import '../views/screens/tukar pulsa/tukar_pulsa_screen.dart';

class AppRoutes {
  static const String splash = "/";
  static const String onboarding = "/onboarding";
  static const String getStarted = "/get-started";
  static const String tnc = "/tnc";
  static const String home = "/home";
  static const String tukarPulsa = "/tukar-pulsa";
  static const String tukarPulsaCheck = "/tukar-pulsa-check";
  static const String tukarPulsaInvoice = "/tukar-pulsa-invoice";
  static const String rekeningList = "/rekening-list";
  static const String inbox = "/inbox";
  static const String activity = "/activity";
  static const String activityStatus = "/activity-status";
  static const String activityStatusPending = "/activity-status-pending";
  static const String bankAccount = "/bank-account";
  static const String addBankAccount = "/add-bank-account";
  static const String editBankAccount = "/edit-bank-account";
  static const String bankList = "/bank-list";
  static const String profile = "/profile";
  static const String contact = "/contact";
  static const String chat = "/chat";
  static const String navbar = "/navbar";

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => SplashScreen(),
    onboarding: (context) => OnboardingScreen(),
    getStarted: (context) => GetStartedScreen(),
    tnc: (context) => TNCScreen(),
    home: (context) => HomeScreen(),
    tukarPulsa: (context) => TukarPulsaScreen(),
    tukarPulsaCheck: (context) => TukarPulsaCheckScreen(),
    tukarPulsaInvoice: (context) => TukarPulsaInvoiceScreen(),
    rekeningList: (context) => DaftarRekeningScreen(),
    inbox: (context) => InboxScreen(),
    activity: (context) => ActivityScreen(),
    activityStatus: (context) => ActivityStatusScreen(),
    activityStatusPending: (context) => ActivityStatusPendingScreen(),
    bankAccount: (context) => RekeningScreen(),
    addBankAccount: (context) => TambahRekeningScreen(),
    editBankAccount: (context) => UbahRekeningScreen(),
    bankList: (context) => DaftarBankScreen(),
    profile: (context) => ProfileScreen(),
    contact: (context) => ContactScreen(),
    chat: (context) => ChatScreen(),

    /// Bottom Navigation Bar
    navbar: (context) => Navbar(),
  };
}
