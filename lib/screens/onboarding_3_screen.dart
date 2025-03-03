import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pulsain/constans/colors.dart';

class Onboarding3Screen extends StatelessWidget {
  const Onboarding3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/enjoy_everyday.svg'),
            SizedBox(height: 79.5),
            Text(
              'Termurah',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Rate convert paling murah untuk penukaran\npulsa menjadi e-money',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 85),
            SvgPicture.asset('assets/carousel_3.svg'),
            SizedBox(height: 85),
            Container(
              width: 165,
              height: 45,
              decoration: BoxDecoration(
                color: ColorsTheme().primary,
                borderRadius: BorderRadius.circular(30),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/get-started');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Mulai',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
