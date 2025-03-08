import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulsain/constans/colors.dart';

class TukarPulsaScreen extends StatefulWidget {
  const TukarPulsaScreen({super.key});

  @override
  State<TukarPulsaScreen> createState() => _TukarPulsaScreenState();
}

class _TukarPulsaScreenState extends State<TukarPulsaScreen> {
  String selectedCountryCode = '+62';
  bool isChecked = false;

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
                height: 575,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Nomor Telepon',
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
                            prefixIcon: Container(
                              padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                ),
                              ),
                              child: DropdownButton<String>(
                                value: selectedCountryCode,
                                iconEnabledColor: ColorsTheme().primary,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedCountryCode = newValue!;
                                  });
                                },
                                items: ['+62', '+1', "92", '+44']
                                    .map(
                                      (String value) =>
                                          DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: GoogleFonts.outfit(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: ColorsTheme().primary,
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                                underline: SizedBox(),
                              ),
                            ),
                            hintText: '82212345678',
                            hintStyle: GoogleFonts.outfit(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff291C39),
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
                    SizedBox(height: 10),

                    ///
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Nominal Pulsa',
                            style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 7),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 7,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffEAEFFF),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/danger.svg',
                                width: 15,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Minimal Rp 30.000',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: ColorsTheme().primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 7),
                        TextField(
                          cursorColor: ColorsTheme().primary,
                          decoration: InputDecoration(
                            hintText: 'Masukkan nominal pulsa',
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
                    SizedBox(height: 10),

                    ///
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Rekening Utama',
                            style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () =>
                              Navigator.pushNamed(context, '/rekening-list'),
                          child: TextField(
                            enabled: false,
                            decoration: InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffCFD7FF),
                                ),
                              ),
                              hintText: 'Pilih Rekening',
                              hintStyle: GoogleFonts.outfit(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff99969C),
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
                    SizedBox(height: 10),

                    ///
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Untuk dapat convert nominal 30.000 anda harus memiliki pulsa 34.500. Pastikan pulsa anda aman tidak dari tindak ilegal.',
                            style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: Color(0xff4B4C4D),
                            ),
                          ),
                          SizedBox(height: 8),
                          Dash(
                            direction: Axis.horizontal,
                            length: MediaQuery.sizeOf(context).width - 80,
                            dashLength: 5,
                            dashColor: Color(0xffE9E9E9),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Transform.scale(
                                scale: 0.8,
                                child: Checkbox(
                                  checkColor: Colors.white,
                                  activeColor: Colors.blue,
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = !isChecked;
                                    });

                                    if (isChecked) {
                                      Navigator.pushNamed(
                                          context, '/tukar-pulsa-check');
                                    }
                                  },
                                ),
                              ),
                              Text(
                                'Anda setuju dengan nominal hasil convert',
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: Color(0xff4B4C4D),
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
                      onTap: isChecked
                          ? () {
                              Navigator.pushNamed(
                                  context, '/tukar-pulsa-check');
                            }
                          : null,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 42,
                          vertical: 15,
                        ),
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          color: isChecked
                              ? ColorsTheme().primary
                              : Colors.blue[200],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          'Lanjutkan',
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
