import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulsain/constans/colors.dart';

class ActivityStatusScreen extends StatefulWidget {
  const ActivityStatusScreen({super.key});

  @override
  State<ActivityStatusScreen> createState() => _ActivityStatusScreenState();
}

class _ActivityStatusScreenState extends State<ActivityStatusScreen> {
  int tapCount = 0;
  void _handleTap() {
    setState(() {
      tapCount = (tapCount + 1) % 3; // Berulang dari 0 → 1 → 2 → 0
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE6F6FF),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 200),
              Image.asset('assets/activity_gradient.png'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 47),
              ListTile(
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back,
                    color: ColorsTheme().primary,
                  ),
                ),
                title: Text(
                  'Orders',
                  style: GoogleFonts.outfit(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none_outlined),
                ),
              ),
              SizedBox(height: 36),
              InkWell(
                onLongPress: () => _handleTap(),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xffE0FBFF),
                          shape: BoxShape.circle,
                        ),
                        child: () {
                          if (tapCount == 0) {
                            return Image.asset(
                              'assets/blue_checked.png',
                              width: 135,
                              height: 135,
                            );
                          } else if (tapCount == 1) {
                            return Image.asset(
                              'assets/red_cross.png',
                              width: 135,
                              height: 135,
                            );
                          } else {
                            return Image.asset(
                              'assets/icon_menunggu.png',
                              width: 135,
                              height: 135,
                            );
                          }
                        }(),
                      ),
                      SizedBox(height: 21),
                      Text(
                        () {
                          if (tapCount == 0) {
                            return 'Pesanan Sukses';
                          } else if (tapCount == 1) {
                            return 'Pesanan Gagal';
                          } else {
                            return 'Menunggu Pembayaran';
                          }
                        }(),
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Berikut detail informasi pesanan ini',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: Color(0xff4F4D74),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 325,
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
                      if (tapCount == 0 || tapCount == 1) ...[
                        Container(
                          width: 325,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Tanggal',
                                    style: GoogleFonts.outfit(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '29 Februari 2024',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Nomor Pengirim',
                                    style: GoogleFonts.outfit(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '082198437823',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    'Rp. 73.000',
                                    style: GoogleFonts.outfit(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: ColorsTheme().primary,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ] else ...[
                        Container(
                          width: 325,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xffCEF3FF),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '*858*082271696916*30000#',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 15),
                              Image.asset(
                                'assets/icon_copy.png',
                                width: 15,
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 325,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Color(0xffF6F1EB),
                                      shape: BoxShape.circle,
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/danger.svg',
                                      width: 15,
                                      height: 15,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Penting!',
                                        style: GoogleFonts.outfit(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        'Baca panduan cara tukar pulsa berikut ini.',
                                        style: GoogleFonts.outfit(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  )
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
                              Text(
                                'Klik kirim untuk transfer pulsa ke nomor kami atau copy kemudian dial ke telepon anda. Beritahu Admin jika sudah berhasil mentransfer pulsa dengan cara Chat Customer Services atau uploud bukti berhasil.',
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 11,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      SizedBox(height: 49),
                      Container(
                        width: 325,
                        padding: EdgeInsets.symmetric(
                          horizontal: 42,
                          vertical: 15,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: ColorsTheme().primary,
                        ),
                        child: Text(
                          'Transfer Pulsa',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 325,
                        padding: EdgeInsets.symmetric(
                          horizontal: 42,
                          vertical: 15,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: ColorsTheme().primary,
                          ),
                          color: Colors.white,
                        ),
                        child: Text(
                          'Chat',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: ColorsTheme().primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
