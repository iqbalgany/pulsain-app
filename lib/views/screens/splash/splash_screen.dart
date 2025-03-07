import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulsain/constans/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, '/onboarding');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsTheme().primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo_pulsain.png',
              width: 63,
              height: 81.5,
            ),
            SizedBox(height: 11),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Pulsa',
                  style: GoogleFonts.baiJamjuree(
                    fontSize: 37,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffAAD1FF),
                  ),
                ),
                Text(
                  'In',
                  style: GoogleFonts.baiJamjuree(
                    fontSize: 37,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Text(
              'Convert Pulsa Indonesia',
              style: GoogleFonts.baiJamjuree(
                fontSize: 10.5,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 41),
            SpinKitThreeBounce(
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
