import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulsain/constans/app_routes.dart';
import 'package:pulsain/constans/colors.dart';
import 'package:pulsain/views/appbar.dart';

class RekeningScreen extends StatelessWidget {
  const RekeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1FDFF),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 47),
            ApplicationBar(
              text: 'Daftar Rekening',
              leadingOnTap: () =>
                  Navigator.pushNamed(context, AppRoutes.navbar),
              trailingOnTap: () {},
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 20),
                child: ListView(
                  padding: EdgeInsets.all(0),
                  children: [
                    ...List.generate(
                      10,
                      (index) => Column(
                        children: [
                          bankAccountItem(context),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    buttonTambahRekening(context),
                    SizedBox(height: 100),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bankAccountItem(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRoutes.editBankAccount),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: ListTile(
          leading: Image.asset(
            'assets/logo_bca.png',
            height: 9,
            width: 27.8,
          ),
          title: Text(
            'Johnatan Ludwig',
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            '7712812799',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 10,
              color: Color(0xff8C8686),
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            color: ColorsTheme().primary,
            size: 18,
          ),
        ),
      ),
    );
  }

  Widget buttonTambahRekening(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRoutes.addBankAccount),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 42,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: ColorsTheme().primary,
        ),
        child: Text(
          'Tambah Rekening',
          textAlign: TextAlign.center,
          style: GoogleFonts.outfit(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
