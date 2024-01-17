import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talky/theming/colors.dart';

class LineDividerInSign extends StatelessWidget {
  const LineDividerInSign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.h,
      width: 100.w,
      color: ColorsManager.darkGrey,
    );
  }
}