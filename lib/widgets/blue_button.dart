import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talky/theming/colors.dart';

class BlueButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const BlueButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        minimumSize: MaterialStateProperty.all(
          Size(319.w, 54.h)
        ),
        backgroundColor: const MaterialStatePropertyAll(
          ColorsManager.blue,
        ),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 16.h),
        child: Text(
          text,
          style: GoogleFonts.inter(
            color: ColorsManager.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
