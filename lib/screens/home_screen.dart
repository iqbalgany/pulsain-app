import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulsain/constans/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 47),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/avatar.svg'),
                Row(
                  children: [
                    Icon(
                      Icons.watch_later_rounded,
                      color: ColorsTheme().primary,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Online',
                      style: GoogleFonts.outfit(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: ColorsTheme().primary,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '24 Jam Kerja',
                      style: GoogleFonts.outfit(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: ColorsTheme().primary,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none_outlined),
                ),
              ],
            ),
            SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hai,Rebecca 👋',
                  style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Selamat Datang di PulsaIn.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xffBDBDBD),
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/home_card.png',
              width: MediaQuery.sizeOf(context).width,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 35),
            Row(
              children: [
                SvgPicture.asset('assets/danger.svg'),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Penting!',
                      style: GoogleFonts.outfit(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Patuhi ',
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'syarat dan ketentuan',
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        Text(
                          ' yang berlaku',
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 40),
            Text(
              'Pilihan Convert Pulsa',
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            Container(
              width: 105,
              height: 125,
              decoration: BoxDecoration(),
              child: Column(
                children: [
                  SvgPicture.asset('assets/promo_badge.svg'),
                  Image.asset('assets/telkomsel.png'),
                  Text(
                    'Telkomsel',
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
