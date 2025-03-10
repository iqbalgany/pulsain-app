import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulsain/constans/app_routes.dart';
import 'package:pulsain/constans/colors.dart';
import 'package:pulsain/views/appbar.dart';

class UbahRekeningScreen extends StatelessWidget {
  const UbahRekeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1FDFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 47),

            /// HEADER
            ApplicationBar(
              text: 'Ubah Rekening',
              leadingOnTap: () => Navigator.pop(context),
              trailingOnTap: () {},
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 20),
              child: Column(
                children: [
                  /// TEXTFIELD
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Bank/Dompet Digital',
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, AppRoutes.bankList),
                        child: TextField(
                          enabled: false,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffFBFBFF),
                            border: OutlineInputBorder(),
                            hintText: 'Pilih Bank',
                            hintStyle: GoogleFonts.outfit(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff99969C),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffCFD7FF),
                              ),
                            ),
                            suffixIcon: Icon(
                              Icons.arrow_drop_down_outlined,
                              color: ColorsTheme().primary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),

                  /// NOMOR REKENING
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Nomor Rekening',
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        cursorColor: ColorsTheme().primary,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffFBFBFF),
                          hintText: 'Masukkan nomor rekening',
                          hintStyle: GoogleFonts.outfit(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff99969C),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffCFD7FF),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorsTheme().primary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),

                  /// NAMA PEMILIK REKENING
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Nama Pemilik Rekening',
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        cursorColor: ColorsTheme().primary,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffFBFBFF),
                          border: OutlineInputBorder(),
                          hintText: 'Masukkan nama pemilik rekening',
                          hintStyle: GoogleFonts.outfit(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff99969C),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffCFD7FF),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorsTheme().primary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 302),

                  /// BUTTON HAPUS REKENING

                  Container(
                    width: MediaQuery.sizeOf(context).width,
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
                      'Hapus Rekening',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.outfit(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: ColorsTheme().primary,
                      ),
                    ),
                  ),

                  /// BUTTON SIMPAN PERUBAHAN
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    padding: EdgeInsets.symmetric(
                      horizontal: 42,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ColorsTheme().primary,
                    ),
                    child: Text(
                      'Simpan Perubahan',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.outfit(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white,
                      ),
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
