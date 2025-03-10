import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulsain/constans/colors.dart';

class ApplicationBar extends StatelessWidget {
  final String text;
  final Function()? leadingOnTap;
  final Function()? trailingOnTap;
  const ApplicationBar({
    super.key,
    required this.text,
    this.leadingOnTap,
    this.trailingOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        onPressed: leadingOnTap,
        icon: Icon(
          Icons.arrow_back,
          color: ColorsTheme().primary,
        ),
      ),
      title: Text(
        text,
        style: GoogleFonts.outfit(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: IconButton(
        onPressed: trailingOnTap,
        icon: Icon(Icons.notifications_none_outlined),
      ),
    );
  }
}
