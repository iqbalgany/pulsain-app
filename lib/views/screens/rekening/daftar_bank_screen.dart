import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulsain/constans/colors.dart';

class DaftarBankScreen extends StatelessWidget {
  const DaftarBankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1FDFF),
      body: Center(
        child: Column(
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
                'Daftar Bank',
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 20),
                child: ListView(
                  padding: EdgeInsets.all(0),
                  children: [
                    ...List.generate(
                      15,
                      (index) => Column(
                        children: [
                          daftarBank(),
                          SizedBox(height: 15),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget daftarBank() {
    return Container(
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
          'Bank Central Asia',
          style: GoogleFonts.outfit(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Colors.black,
          ),
        ),
        trailing: Container(
          width: 42,
          height: 17,
          decoration: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            'Gratis',
            textAlign: TextAlign.center,
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w300,
              fontSize: 10,
              color: ColorsTheme().primary,
            ),
          ),
        ),
      ),
    );
  }
}
