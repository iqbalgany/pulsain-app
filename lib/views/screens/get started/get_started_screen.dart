import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulsain/constans/colors.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/get_started_background.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 55,
              horizontal: 37.5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: SvgPicture.asset('assets/secure.svg')),
                SizedBox(height: 83),
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
                SizedBox(height: 175),
                Text(
                  'Yuk, Mulai Mendaftar',
                  style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Tukarkan pulsa yang tidak dipakai dengan\naman dan cepat',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 36),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/tnc'),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 31,
                      vertical: 20.5,
                    ),
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/google_logo.png',
                          height: 28,
                          width: 28,
                        ),
                        SizedBox(width: 18),
                        Text(
                          'Continue With Google',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: ColorsTheme().primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
