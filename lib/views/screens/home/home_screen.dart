import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulsain/constans/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void informationRate() {
      showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          width: MediaQuery.sizeOf(context).width,
          height: 350,
          child: Column(
            children: [
              SizedBox(height: 15),
              Container(
                height: 2,
                width: 60,
                decoration: BoxDecoration(
                  color: ColorsTheme().primary,
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/telkomsel.png',
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Telkomsel',
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Daftar Informasi rate',
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: Color(0xff9F9F9F),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    SvgPicture.asset('assets/promo_badge.svg')
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '30.000 - 1.000.000',
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 15,
                          width: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.transparent,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 10,
                                color: Color(0xffCED3DA),
                              ),
                              SizedBox(width: 3),
                              Text(
                                '0.8',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Color(0xffCED3DA),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 17),
                        Container(
                          height: 15,
                          width: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorsTheme().primary,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 10,
                                color: Colors.white,
                              ),
                              SizedBox(width: 3),
                              Text(
                                '0.9',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Dash(
                      direction: Axis.horizontal,
                      length: MediaQuery.sizeOf(context).width - 40,
                      dashLength: 5,
                      dashColor: Color(0xffE9E9E9),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          '30.000 - 10.000.000',
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 15,
                          width: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.transparent,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 10,
                                color: Color(0xffCED3DA),
                              ),
                              SizedBox(width: 3),
                              Text(
                                '0.8',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Color(0xffCED3DA),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 17),
                        Container(
                          height: 15,
                          width: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorsTheme().primary,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 10,
                                color: Colors.white,
                              ),
                              SizedBox(width: 3),
                              Text(
                                '0.9',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Dash(
                      direction: Axis.horizontal,
                      length: MediaQuery.sizeOf(context).width - 40,
                      dashLength: 5,
                      dashColor: Color(0xffE9E9E9),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          '30.000 - 100.000.000',
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 15,
                          width: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.transparent,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 10,
                                color: Color(0xffCED3DA),
                              ),
                              SizedBox(width: 3),
                              Text(
                                '0.8',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Color(0xffCED3DA),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 17),
                        Container(
                          height: 15,
                          width: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorsTheme().primary,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 10,
                                color: Colors.white,
                              ),
                              SizedBox(width: 3),
                              Text(
                                '0.9',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              InkWell(
                onTap: () => Navigator.pushNamed(context, '/tukar-pulsa'),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  padding: EdgeInsets.symmetric(
                    horizontal: 42,
                    vertical: 15,
                  ),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: ColorsTheme().primary,
                  ),
                  child: Text(
                    'Tukar Pulsa',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF1FDFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 47),
              AppBar(),
              SizedBox(height: 30),
              Header(),
              CarouselCard(),
              SizedBox(height: 35),
              Urgent(),
              SizedBox(height: 25),
              Dash(
                direction: Axis.horizontal,
                length: MediaQuery.sizeOf(context).width - 40,
                dashLength: 5,
                dashColor: Colors.grey,
              ),
              SizedBox(height: 15),
              Text(
                'Pilihan Convert Pulsa',
                style: GoogleFonts.outfit(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContentCard(
                    onTap: informationRate,
                  ),
                  ContentCard(
                    onTap: informationRate,
                  ),
                  ContentCard(
                    onTap: informationRate,
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContentCard(
                    onTap: informationRate,
                  ),
                  ContentCard(
                    onTap: informationRate,
                  ),
                  ContentCard(
                    onTap: informationRate,
                  ),
                ],
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}

class Urgent extends StatelessWidget {
  const Urgent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
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
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.navigate_next_rounded,
            color: Color(0xffB3B3B3),
          ),
        ],
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset('assets/avatar.svg'),
        Container(
          padding: EdgeInsets.fromLTRB(7, 5, 10, 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(28),
          ),
          child: Row(
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
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.5),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/inbox');
            },
            icon: Icon(Icons.notifications_none_outlined),
          ),
        ),
      ],
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

class CarouselCard extends StatelessWidget {
  const CarouselCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1.0,
        height: 160,
      ),
      items: [
        'assets/home_card.png',
        'assets/home_card.png',
        'assets/home_card.png',
      ].map((imagePath) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imagePath,
            width: double.infinity,
            height: 400,
            fit: BoxFit.contain,
          ),
        );
      }).toList(),
    );
  }
}

class ContentCard extends StatelessWidget {
  final Function()? onTap;
  const ContentCard({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Column(
          children: [
            SvgPicture.asset('assets/promo_badge.svg'),
            SizedBox(height: 14.5),
            Image.asset(
              'assets/telkomsel.png',
              width: 45,
              height: 45,
            ),
            SizedBox(height: 13),
            Text(
              'Telkomsel',
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Colors.black,
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 15,
                  width: 37,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.transparent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        size: 10,
                        color: Color(0xffCED3DA),
                      ),
                      SizedBox(width: 3),
                      Text(
                        '0.8',
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color(0xffCED3DA),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 17),
                Container(
                  height: 15,
                  width: 37,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: ColorsTheme().primary,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        size: 10,
                        color: Colors.white,
                      ),
                      SizedBox(width: 3),
                      Text(
                        '0.9',
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
