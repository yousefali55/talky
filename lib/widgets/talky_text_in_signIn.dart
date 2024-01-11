
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talky/theming/colors.dart';

class TalkyTextInSignin extends StatelessWidget {
  const TalkyTextInSignin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: GoogleFonts.inter(
          color: ColorsManager.navyBlue,
          fontWeight: FontWeight.w700,
          fontSize: 700,
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