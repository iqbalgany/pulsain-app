import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulsain/constans/app_routes.dart';
import 'package:pulsain/constans/colors.dart';
import 'package:pulsain/views/appbar.dart';
import 'package:pulsain/views/screens/activity/activity_status_screen.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  String selectedTab = "Proses";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1FDFF),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 47),
            ApplicationBar(
              text: 'Kotak Masuk',
              leadingOnTap: () =>
                  Navigator.pushNamed(context, AppRoutes.navbar),
              trailingOnTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  statusOrder(context, 'Proses'),
                  statusOrder(context, 'Berhasil')
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: ListView(
                  padding: EdgeInsets.only(
                    bottom: 100,
                  ),
                  children: List.generate(
                    10,
                    (index) => Column(
                      children: [
                        selectedTab == 'Proses'
                            ? orderCard(context)
                            : successCard(context),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget statusOrder(BuildContext context, String text) {
    bool isSelected = selectedTab == text;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedTab = text;
          });
        },
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          padding: EdgeInsets.only(
            top: 6,
            bottom: 11,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: isSelected ? ColorsTheme().primary : Colors.blue[200]!,
              ),
            ),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.outfit(
              color: isSelected ? ColorsTheme().primary : Colors.blue[200],
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  Widget orderCard(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, AppRoutes.activityStatusPending),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_telkomsel.png',
                    width: 35,
                    height: 35,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '#TP-TL-1022007',
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '29 Februari 2024',
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                          color: Color(0xff9F9F9F),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 63,
                    height: 17,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.watch_later_rounded,
                          color: ColorsTheme().primary,
                          size: 12,
                        ),
                        SizedBox(width: 2),
                        Text(
                          'Diproses',
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                            color: ColorsTheme().primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Dash(
              direction: Axis.horizontal,
              length: MediaQuery.sizeOf(context).width - 80,
              dashLength: 5,
              dashColor: Color(0xffE9E9E9),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Nominal Pulsa',
                  style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Text(
                  'Rp 100.000',
                  style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Text(
                  'Hasil Konversi',
                  style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Text(
                  'Rp 73.000',
                  style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xff05DC31),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget successCard(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ActivityStatusScreen(),
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_telkomsel.png',
                    width: 35,
                    height: 35,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '#TP-TL-1022007',
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '29 Februari 2024',
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                          color: Color(0xff9F9F9F),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffDAFAE0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 63,
                    height: 17,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Color(0xff05DC31),
                          size: 12,
                        ),
                        SizedBox(width: 2),
                        Text(
                          'Selesai',
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                            color: Color(0xff05DC31),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Dash(
              direction: Axis.horizontal,
              length: MediaQuery.sizeOf(context).width - 80,
              dashLength: 5,
              dashColor: Color(0xffE9E9E9),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Nominal Pulsa',
                  style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Text(
                  'Rp 100.000',
                  style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Text(
                  'Hasil Konversi',
                  style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Text(
                  'Rp 73.000',
                  style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xff05DC31),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Text(
                  'Platform',
                  style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Container(
                  width: 50,
                  height: 17,
                  decoration: BoxDecoration(
                    color: ColorsTheme().primary,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Aplikasi',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w300,
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
