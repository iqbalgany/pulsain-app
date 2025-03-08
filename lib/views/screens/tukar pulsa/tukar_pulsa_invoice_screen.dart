import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulsain/constans/colors.dart';

class TukarPulsaInvoiceScreen extends StatefulWidget {
  const TukarPulsaInvoiceScreen({super.key});

  @override
  State<TukarPulsaInvoiceScreen> createState() =>
      _TukarPulsaInvoiceScreenState();
}

class _TukarPulsaInvoiceScreenState extends State<TukarPulsaInvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/tukar_pulsa_background.png'),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 47),
                ListTile(
                  leading: IconButton(
                    onPressed: () => Navigator.pop(context),
                    color: Colors.blueGrey,
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Color(0xff5e79c2),
                      ),
                    ),
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    'Tukar Pulsa',
                    style: GoogleFonts.outfit(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 488,
                width: MediaQuery.sizeOf(context).width,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Color(0xffF1FDFF),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    ///
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/telkomsel.png',
                                    width: 24,
                                    height: 24,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Telkomsel',
                                    style: GoogleFonts.outfit(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '082198437823',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: Color(0xff908C8E),
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.swap_horiz_rounded,
                            color: ColorsTheme().primary,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'BCA',
                                    style: GoogleFonts.outfit(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Image.asset(
                                    'assets/logo_bca.png',
                                    scale: 3,
                                  ),
                                ],
                              ),
                              Text(
                                '17712100413',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: Color(0xff908C8E),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),

                    ///
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Nominal',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Rp 100.000',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xffA2A1A4),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Rate',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '0.8',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xffA2A1A4),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Hasil Konversi',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Rp 80.000',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xffA2A1A4),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Biaya Transfer',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Rp 0',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xffA2A1A4),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Dash(
                            direction: Axis.horizontal,
                            length: MediaQuery.sizeOf(context).width - 117,
                            dashLength: 5,
                            dashColor: Color(0xffE9E9E9),
                          ),
                          SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Total Akhir',
                              style: GoogleFonts.outfit(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Jumlah uang yang diterima',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Rp. 80.000',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: ColorsTheme().primary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Spacer(),

                    ///
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 42,
                          vertical: 15,
                        ),
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: ColorsTheme().primary),
                        ),
                        child: Text(
                          'Aplikasi',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: ColorsTheme().primary,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),

                    ///
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 42,
                          vertical: 15,
                        ),
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          color: ColorsTheme().primary,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          'Whatsapp',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
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
