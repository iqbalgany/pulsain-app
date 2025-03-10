import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulsain/constans/colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1FDFF),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 47),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
              child: ListTile(
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back,
                    color: ColorsTheme().primary,
                  ),
                ),
                title: Text(
                  'Cs 1',
                  style: GoogleFonts.outfit(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: Container(
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
                        'Online',
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                          color: Color(0xff05DC31),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 20,
                ),
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Wed, 8:21 AM',
                      style: GoogleFonts.outfit(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: Color(0xff8D8F8F),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 293,
                        height: 62,
                        decoration: BoxDecoration(
                          color: Color(0xffF6F1EB),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15),
                            bottomLeft: Radius.circular(5),
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'This is a sample big message with a\nlonger text paragraph',
                            style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: Color(0xff505050),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        '10:30 AM',
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color(0xff8E8F92),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 252,
                        height: 41,
                        decoration: BoxDecoration(
                          color: ColorsTheme().primary,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(15),
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'This is a sample message for a chat',
                            style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        '10:30 AM',
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color(0xff8E8F92),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 173,
                        height: 62,
                        decoration: BoxDecoration(
                          color: Color(0xffF6F1EB),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15),
                            bottomLeft: Radius.circular(5),
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'This is a sample image',
                            style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: Color(0xff505050),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        '10:30 AM',
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color(0xff8E8F92),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 245,
                        height: 62,
                        decoration: BoxDecoration(
                          color: ColorsTheme().primary,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(15),
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'This is a sample big message with a\nlonger text paragraph',
                            textAlign: TextAlign.end,
                            style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        '10:30 AM',
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color(0xff8E8F92),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.attach_file_outlined,
                      size: 18,
                    ),
                  ),
                  Container(
                    width: 270,
                    height: 36,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffF7F7FC),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send,
                      color: ColorsTheme().primary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
