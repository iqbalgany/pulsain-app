import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulsain/constans/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsTheme().primary,
      body: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/onboarding');
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo_pulsain.png'),
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
              SvgPicture.asset('assets/splash_loading.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
