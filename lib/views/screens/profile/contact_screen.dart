import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulsain/constans/colors.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1FDFF),
      body: Center(
        child: Stack(
          children: [
            Column(
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
                    'Pusat Bantuan',
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
                Divider(),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icon_chat.png',
                        width: 35,
                      ),
                      SizedBox(width: 15),
                      Column(
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
                            'Punya pertanyaan atau keluhan untuk disampaikan ?',
                            style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xff9C9898),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 22,
                        vertical: 28,
                      ),
                      width: MediaQuery.sizeOf(context).width,
                      height: 535,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/contact_background.png'),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Yuk, sampaikan langsung ke\nCS kami melalui berbagai pilihan dibawah',
                            style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 22),
                          Dash(
                            direction: Axis.horizontal,
                            length: MediaQuery.sizeOf(context).width - 84,
                            dashLength: 5,
                            dashColor: Color(0xff3D95FD),
                          ),
                          SizedBox(height: 22),
                          contactItem(
                            icon: 'assets/contact_email.png',
                            title: 'Email',
                            subtile: 'customercare@pulsain.com',
                          ),
                          SizedBox(height: 30),
                          contactItem(
                            icon: 'assets/contact_instagram.png',
                            title: 'Instagram',
                            subtile: '@pulsain',
                          ),
                          SizedBox(height: 30),
                          contactItem(
                            icon: 'assets/contact_whatsapp.png',
                            title: 'Whatsapp',
                            subtile: '0821-1111-1111',
                          ),
                          SizedBox(height: 30),
                          contactItem(
                            icon: 'assets/contact_website.png',
                            title: 'Website',
                            subtile: 'www.pulsain.com',
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'assets/contact_people.png',
                  width: 290.25,
                  height: 399,
                )),
          ],
        ),
      ),
    );
  }

  Row contactItem({
    required String icon,
    required String title,
    required String subtile,
  }) {
    return Row(
      children: [
        Image.asset(
          icon,
          scale: 4,
        ),
        SizedBox(width: 13),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            Text(
              subtile,
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w300,
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
