import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulsain/constans/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String selectedCountryCode = '+62';

  void _editPhotoProfile() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      builder: (context) {
        return SizedBox(
          height: 680,
          width: MediaQuery.sizeOf(context).width,
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
              Text(
                'Ubah Foto Profil',
                style: GoogleFonts.outfit(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 15),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 335,
                      decoration: BoxDecoration(
                        color: Color(0xffF1FDFF),
                        border: Border.all(
                          color: ColorsTheme().primary,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icon_upload.png',
                            width: 42,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Unggah Foto',
                            style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Spesifikasi gambar dengan rasio gambar\n1:1 dan maksimum 5 Megabyte',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: Color(0xff818186),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color(0xffE2FAFE),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Uploading...',
                                    style: GoogleFonts.outfit(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '15%  • 30 seconds remaining',
                                    style: GoogleFonts.outfit(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      color: Color(0xff857D7D),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Image.asset(
                                'assets/icon_pause.png',
                                width: 20,
                              ),
                              SizedBox(width: 6),
                              Image.asset(
                                'assets/icon_cancel.png',
                                width: 24,
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Container(
                            width: MediaQuery.sizeOf(context).width,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Color(0xffFAFAFA),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: LinearProgressIndicator(
                                backgroundColor: Colors.transparent,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    ColorsTheme().primary),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Divider(),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {},
                      child: Container(
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
                          'Simpan',
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
              )
            ],
          ),
        );
      },
    );
  }

  void editName() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
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
              Text(
                'Ubah Nama Lengkap',
                style: GoogleFonts.outfit(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 15),
              Divider(),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
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
                            hintText: 'Johnatan Ludwig',
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
                        SizedBox(height: 35),
                        Divider(),
                        SizedBox(height: 20),
                        InkWell(
                          onTap: () {},
                          child: Container(
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
                              'Simpan',
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
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void editTelepon() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          width: MediaQuery.sizeOf(context).width,
          height: 380,
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
              Text(
                'Ubah Nomor Telepon',
                style: GoogleFonts.outfit(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 15),
              Divider(),
              Padding(
                padding: EdgeInsets.all(20),
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
                        SizedBox(height: 35),
                        Divider(),
                        SizedBox(height: 20),
                        InkWell(
                          onTap: () {},
                          child: Container(
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
                              'Simpan',
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
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void editEmail() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
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
              Text(
                'Ubah Email',
                style: GoogleFonts.outfit(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 15),
              Divider(),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Email',
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
                            hintText: 'john@email.com',
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
                        SizedBox(height: 35),
                        Divider(),
                        SizedBox(height: 20),
                        InkWell(
                          onTap: () {},
                          child: Container(
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
                              'Simpan',
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
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

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
                onPressed: () => Navigator.pushNamed(context, '/navbar'),
                icon: Icon(
                  Icons.arrow_back,
                  color: ColorsTheme().primary,
                ),
              ),
              title: Text(
                'Profile',
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
            GestureDetector(
              onTap: _editPhotoProfile,
              child: SvgPicture.asset(
                'assets/avatar.svg',
                width: 102.86,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Johnatan Ludwig',
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Text(
              'john@email.com',
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xffAAACB1),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  profileItem(
                    icon: 'assets/icon_name.png',
                    onTap: editName,
                    title: 'Nama Lengkap',
                    subtitle: 'Johnatan Ludwig',
                  ),
                  SizedBox(height: 10),
                  profileItem(
                    icon: 'assets/icon_email.png',
                    onTap: editEmail,
                    title: 'Alamat Email',
                    subtitle: 'john@email.com',
                  ),
                  SizedBox(height: 10),
                  profileItem(
                    icon: 'assets/icon_telpon.png',
                    onTap: editTelepon,
                    title: 'Nomor Telepon',
                    subtitle: '082212345678',
                  ),
                  SizedBox(height: 10),
                  profileItem(
                    icon: 'assets/icon_help.png',
                    onTap: () => Navigator.pushNamed(context, '/contact'),
                    title: 'Pusat Bantuan',
                    subtitle: 'Hubungi kami terkait kendala anda',
                  ),
                  SizedBox(height: 10),
                  profileItem(
                    icon: 'assets/icon_signout.png',
                    onTap: () {},
                    title: 'Keluar',
                    subtitle: 'Keluar dari akun anda sekarang',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector profileItem({
    required String icon,
    required String title,
    required String subtitle,
    required GestureTapCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: ListTile(
          leading: Image.asset(
            icon,
            height: 35,
            width: 35,
          ),
          title: Text(
            title,
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 12,
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
}
