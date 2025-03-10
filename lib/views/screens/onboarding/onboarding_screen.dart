import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pulsain/constans/colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;

  final List<Map<String, String>> onboardingData = [
    {
      'image': 'assets/enjoy_everyday.png',
      'title': 'Terpercaya',
      'description':
          'Convert paling terpercaya untuk penukaran\npulsa menjadi e-money',
      'carousel': 'assets/carousel_1.svg',
      'button': 'Selanjutnya',
    },
    {
      'image': 'assets/transaction_fast.png',
      'title': 'Termudah dan Teraman',
      'description':
          'Termudah dan paling aman untuk transaksi\npenukaran pulsa menjadi e-money',
      'carousel': 'assets/carousel_2.svg',
      'button': 'Selanjutnya',
    },
    {
      'image': 'assets/onboarding3.png',
      'title': 'Termurah',
      'description':
          'Rate convert paling murah untuk penukaran\npulsa menjadi e-money',
      'carousel': 'assets/carousel_3.svg',
      'button': 'Mulai',
    },
  ];

  void _nextStep() {
    setState(() {
      if (currentIndex < onboardingData.length - 1) {
        currentIndex++;
      } else {
        Navigator.pushReplacementNamed(context, '/get-started');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              onboardingData[currentIndex]['image']!,
              width: 390,
              height: 400,
            ),
            SizedBox(height: 79.5),
            Text(
              onboardingData[currentIndex]['title']!,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 15),
            Text(
              onboardingData[currentIndex]['description']!,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 85),
            SvgPicture.asset(onboardingData[currentIndex]['carousel']!),
            SizedBox(height: 85),
            Container(
              width: 165,
              height: 45,
              decoration: BoxDecoration(
                color: ColorsTheme().primary,
                borderRadius: BorderRadius.circular(30),
              ),
              child: GestureDetector(
                onTap: _nextStep,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      onboardingData[currentIndex]['button']!,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 5),
                    Visibility(
                      visible: currentIndex < onboardingData.length - 1,
                      child: Icon(
                        Icons.arrow_forward,
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
