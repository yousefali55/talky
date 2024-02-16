import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talky/spacing/spacing.dart';
import 'package:talky/theming/colors.dart';
import 'package:talky/views/register/widgets/button_upload_image.dart';
import 'package:talky/widgets/back_button.dart';
import 'package:talky/widgets/blue_button.dart';
import 'package:talky/widgets/repeated_text_form_field.dart';
class RigsterScreen extends StatelessWidget {
  const RigsterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            heightSpace(20.h),
            Row(
              children: [
                Flexible(
                  child: BlueBackButton(
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Flexible(
                  child: Center(
                    child: Text(
                      'Profile',
                      style: GoogleFonts.inter(
                        color: ColorsManager.navyBlue,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  children: [
                    heightSpace(50.h),
                    SizedBox(
                      height: 260.h,
                      width: 190.w,
                      child: const Stack(
                        children: [
                          Center(
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://fcb-abj-pre.s3.amazonaws.com/img/jugadors/MESSI.jpg',
                              ),
                              radius: 140,
                            ),
                          ),
                          Positioned(
                              right: 0, bottom: 1, child: ButtonUploadIamge()),
                        ],
                      ),
                    ),
                    heightSpace(50),
                    RepeatedTextFormField(
                      controller: TextEditingController(),
                      hintText: 'Enter Username',
                    ),
                    heightSpace(91),
                    BlueButton(text: 'Complete', onPressed: () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
