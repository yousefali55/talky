import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talky/routing/routes.dart';
import 'package:talky/spacing/spacing.dart';
import 'package:talky/theming/colors.dart';
import 'package:talky/views/signin/cubits/google/google_sign_in_cubit.dart';
import 'package:talky/widgets/already_have.dart';
import 'package:talky/widgets/button_authntication.dart';
import 'package:talky/widgets/line_divide_in_sign.dart';
import 'package:talky/widgets/talky_text_in_signin.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              heightSpace(71),
              const TalkyTextInSignIn(
                fontSize: 70,
              ),
              heightSpace(78),
              BlocBuilder<GoogleSignInCubit, GoogleSignInState>(
                builder: (context, state) {
                  if (state is GoogleSignInInitial) {
                    return ButtonAuthntication(
                      s: 'Google',
                      svg: 'assets/svgs/iconGoogle.svg',
                      onPressed: () {
                        context.read<GoogleSignInCubit>().signInWithGoogle();
                      },
                    );
                  } else if (state is GoogleSignInSuccess) {
                    return const Text('Success');
                  } else if (state is GoogleSignInError) {
                    return Text('Error is ${state.error}');
                  } else {
                    return Container();
                  }
                },
              ),
              heightSpace(16),
              ButtonAuthntication(
                svg: 'assets/svgs/Facebook.svg',
                s: 'Facebook',
                onPressed: () {},
              ),
              heightSpace(
                30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const LineDividerInSign(),
                  Text(
                    'Or',
                    style: GoogleFonts.inter(
                      color: ColorsManager.darkGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const LineDividerInSign(),
                ],
              ),
              heightSpace(30),
              ButtonAuthntication(
                s: 'Email',
                svg: 'assets/svgs/email.svg',
                onPressed: () {
                  Navigator.pushNamed(context, Routes.signInEmail);
                },
              ),
              heightSpace(30),
              AlreadyHaveAndSignUp(onPressed: () {
                Navigator.pushNamed(context, Routes.signUpEmail);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
