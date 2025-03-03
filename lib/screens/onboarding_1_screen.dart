import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pulsain/constans/colors.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/enjoy_everyday.png'),
            SizedBox(height: 79.5),
            Text(
              'Terpercaya',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Convert paling terpercaya untuk penukaran\npulsa menjadi e-money',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 85),
            SvgPicture.asset('assets/carousel_1.svg'),
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
                  Navigator.pushNamed(context, '/onboarding-2');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Selanjutnya',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
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
