import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talky/spacing/spacing.dart';
import 'package:talky/widgets/back_button.dart';
import 'package:talky/widgets/talky_text_in_signin.dart';

class SignInEmail extends StatelessWidget {
  const SignInEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              heightSpace(20.h),
              Row(
                children: [
                  BlueBackButton(
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              heightSpace(
                21,
              ),
              const TalkyTextInSignIn(
                fontSize: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
