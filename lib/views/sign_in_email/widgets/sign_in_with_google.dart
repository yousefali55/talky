import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talky/theming/colors.dart';

class SignInWithGoogle extends StatelessWidget {
  const SignInWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Sign in with Google',
    style: GoogleFonts.inter(
      color: ColorsManager.navyBlue,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),);
  }
}