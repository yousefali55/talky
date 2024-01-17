import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talky/theming/colors.dart';

class AlreadyHaveAndSignUp extends StatelessWidget {
  final void Function()? onPressed;

  const AlreadyHaveAndSignUp({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            'Already have an account?',
            style: GoogleFonts.inter(
              color: ColorsManager.navyBlue,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero, // Set padding to zero
            ),
            child: Text(
              'Sign Up here',
              style: GoogleFonts.inter(
                
                color: ColorsManager.blue,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
