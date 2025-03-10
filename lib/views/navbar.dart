import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulsain/constans/colors.dart';
import 'package:pulsain/views/screens/activity/activity_screen.dart';
import 'package:pulsain/views/screens/home/home_screen.dart';
import 'package:pulsain/views/screens/profile/profile_screen.dart';
import 'package:pulsain/views/screens/rekening/rekening_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({
    super.key,
  });

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomeScreen();
        case 1:
          return ActivityScreen();
        case 2:
          return RekeningScreen();
        case 3:
          return ProfileScreen();
        default:
          return HomeScreen();
      }
    }

    Widget navbarItem({
      String? text,
      int? index,
      IconData? icon,
    }) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: GestureDetector(
          onTap: () {
            onTabTapped(index!);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color:
                    currentIndex == index ? ColorsTheme().primary : Colors.grey,
                size: 30,
              ),
              Text(
                text!,
                style: GoogleFonts.outfit(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: currentIndex == index
                      ? ColorsTheme().primary
                      : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget customBotttomNavigationBar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/bottom_navigation_bar.png',
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              navbarItem(
                text: 'Home',
                index: 0,
                icon: Icons.home,
              ),
              navbarItem(
                text: 'Aktivitas',
                index: 1,
                icon: Icons.shopping_basket_rounded,
              ),
              navbarItem(
                text: 'Tukar Pulsa',
              ),
              navbarItem(
                text: 'Rekening',
                index: 2,
                icon: Icons.credit_card_rounded,
              ),
              navbarItem(
                text: 'Profile',
                index: 3,
                icon: Icons.account_circle_rounded,
              ),
            ],
          ),
        ),
      );
    }

    Widget floatingActionButton() {
      return Padding(
        padding: const EdgeInsets.only(
          bottom: 30,
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tukar-pulsa');
              },
              shape: CircleBorder(),
              backgroundColor: ColorsTheme().primary,
              child: Icon(
                Icons.swap_horiz,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
        body: Stack(
      children: [
        buildContent(currentIndex),
        customBotttomNavigationBar(),
        floatingActionButton()
      ],
    ));
  }
}
