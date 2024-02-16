import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talky/spacing/spacing.dart';
import 'package:talky/theming/colors.dart';
import 'package:talky/views/sign_up_email/data/cubit/sign_up_email_cubit.dart';
import 'package:talky/views/sign_up_email/functions/custom_snack_bar.dart';
import 'package:talky/views/sign_up_email/functions/verify_alert_dialoge.dart';
import 'package:talky/widgets/back_button.dart';
import 'package:talky/widgets/blue_button.dart';
import 'package:talky/widgets/repeated_text_form_field.dart';
import 'package:talky/widgets/talky_text_in_signin.dart';

class SignUpEmailScreen extends StatelessWidget {
  const SignUpEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<SignUpEmailCubit, SignUpEmailState>(
          listener: (context, state) {
            if (state is SignUpEmailSuccess) {
              verifyEmailAlertDialogue(context, onPressed: () {
                FirebaseAuth.instance.currentUser!.sendEmailVerification();
              });
            } else if (state is SignUpEmailFailure) {
              showCustomSnackbar(
                  context, 'Failed, ${state.errorMessage}', ColorsManager.red);
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  Row(
                    children: [
                      BlueBackButton(onPressed: () {}),
                    ],
                  ),
                  heightSpace(21),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        TalkyTextInSignIn(fontSize: 50.h),
                        heightSpace(90),
                        RepeatedTextFormField(
                          controller:
                              context.read<SignUpEmailCubit>().emailController,
                          hintText: 'Enter email',
                        ),
                        heightSpace(50),
                        RepeatedTextFormField(
                          controller: context
                              .read<SignUpEmailCubit>()
                              .passwordController,
                          hintText: 'Enter password',
                        ),
                        heightSpace(250),
                        state is SignUpEmailLoading
                            ? const CircularProgressIndicator(
                                color: ColorsManager.blue,
                              )
                            : BlueButton(
                                text: 'Sign Up',
                                onPressed: () {
                                  context
                                      .read<SignUpEmailCubit>()
                                      .signUpEmail();
                                })
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
