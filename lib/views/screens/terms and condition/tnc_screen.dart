import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulsain/constans/colors.dart';

class TNCScreen extends StatefulWidget {
  const TNCScreen({super.key});

  @override
  State<TNCScreen> createState() => _TNCScreenState();
}

class _TNCScreenState extends State<TNCScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: ColorsTheme().primary,
          ),
        ),
        title: Text(
          'Syarat dan Ketentuan',
          style: GoogleFonts.outfit(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_none_outlined),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Does Termly\'s End User License Agreement Generator Cover All Contract and Consumer Protection Laws?',
              textAlign: TextAlign.justify,
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xff2A282C),
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Ultrices fames et nisl, ut imperdiet cursus maecenas. Etiam placerat tellus eget lacus nec eleifend odio. Sollicitudin id egestas proin maecenas consectetur in hac risus. Sed tellus semper ultrices blandit fringilla pulvinar ut congue. Tellus suspendisse proin amet pulvinar suspendisse ut ut enim feugiat. Tincidunt lacus porttitor morbi tellus tellus amet, quam mattis. Id faucibus commodo tellus ultrices convallis velit sagittis fermentum, id. Augue mauris, diam habitant sit venenatis sed. Nec, aliquam tincidunt at commodo diam laoreet. Morbi nibh nisl cursus amet lacus quis. Ornare quis dignissim purus feugiat placerat justo. Felis a mi viverra sem phasellus vel diam. Tellus platea bibendum sit feugiat elementum venenatis vel elementum. Massa blandit nisi, nulla iaculis amet. Eget quam curabitur suscipit pharetra faucibus pellentesque aliquam. Tellus suspendisse proin amet pulvinar suspendisse ut ut enim feugiat. Tincidunt lacus porttitor morbi tellus tellus amet.',
              textAlign: TextAlign.justify,
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w300,
                fontSize: 14,
                color: Color(0xff4D4C4E),
              ),
            ),
            Spacer(),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: Colors.blue,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                ),
                Text(
                  'Saya setuju dengan ketentuan layanan ini.',
                  style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff4B4C4D),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: isChecked
                  ? () {
                      Navigator.pushReplacementNamed(context, '/navbar');
                    }
                  : null,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 42,
                  vertical: 15,
                ),
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: isChecked ? ColorsTheme().primary : Colors.blue[200],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Setuju, Lanjutkan',
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
    );
  }
}
