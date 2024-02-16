import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talky/theming/colors.dart';

void verifyEmailAlertDialogue(BuildContext context, {required Function() onPressed}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Verify your account',
          style: GoogleFonts.inter(
            color: ColorsManager.darkGrey,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),),
          actions: [
            ElevatedButton(
              onPressed: onPressed,
              child:  Text(
                'Click here!',
                style: GoogleFonts.inter(
                  color: ColorsManager.primaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        );
      },
    );
}
