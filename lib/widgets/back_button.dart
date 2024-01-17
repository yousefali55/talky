import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talky/theming/colors.dart';

class BlueBackButton extends StatelessWidget {
  final void Function() onPressed;
  const BlueBackButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Container(
        height:40.h,
        width: 40.h,
        decoration:  BoxDecoration(
          
          color: ColorsManager.whityBlue,
          borderRadius: BorderRadius.circular(40),
        ),
        child: SvgPicture.asset(
          'assets/svgs/Back.svg',
          height: 24.h,
          width: 24.w,
        ),
      ),
      label: Text(
        'back',
        style: GoogleFonts.inter(
          color: ColorsManager.blue,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
