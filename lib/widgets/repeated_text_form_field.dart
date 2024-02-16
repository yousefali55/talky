import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talky/theming/colors.dart';

class RepeatedTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller ;
  // final TextEditingController textEditingController;
  const RepeatedTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: ColorsManager.blue),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: ColorsManager.darkGrey,
              )),
          contentPadding: EdgeInsets.only(left: 20.w, top: 18.h, bottom: 18.h),
          hintText: hintText,
          hintStyle: GoogleFonts.inter(
            color: ColorsManager.darkGrey,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          )),
    );
  }
}
