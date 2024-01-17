import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:talky/theming/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonAuthntication extends StatelessWidget {
  final String s;
  final String svg;
  final void Function() onPressed;
  const ButtonAuthntication(
      {super.key, required this.s, required this.svg, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    String signinWith = 'Sign in with $s';
    return ElevatedButton.icon(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.white),
        minimumSize: MaterialStateProperty.all(
          Size(319.w, 70.h)
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              8,
            ),
          ),
        ),
      ),
      icon: SvgPicture.asset(
        svg,
        height: 24.h,
        width: 24.h,
      ),
      label: Text(
        signinWith,
        style: GoogleFonts.inter(
          color: ColorsManager.navyBlue,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
