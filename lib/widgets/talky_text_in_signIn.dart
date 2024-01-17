import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talky/theming/colors.dart';

class TalkyTextInSignIn extends StatelessWidget {
  final double fontSize;
  const TalkyTextInSignIn({
    super.key, required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: GoogleFonts.inter(
          color: ColorsManager.navyBlue,
          fontWeight: FontWeight.w700,
          fontSize: fontSize,
        ),
        children: const [
          TextSpan(
            text: 'Talky',
          ),
          TextSpan(
            text: '.',
            style: TextStyle(
              color: ColorsManager.blue,
            ),
          )
        ],
      ),
    );
  }
}