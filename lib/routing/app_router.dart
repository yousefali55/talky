import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talky/routing/routes.dart';
import 'package:talky/views/register/ui/register.dart';
import 'package:talky/views/sign_in_email/cubits/cubit/sign_in_email_cubit.dart';
import 'package:talky/views/sign_in_email/ui/sign_in_email.dart';
import 'package:talky/views/sign_up_email/data/cubit/sign_up_email_cubit.dart';
import 'package:talky/views/sign_up_email/ui/sign_up_email.dart';
import 'package:talky/views/signin/cubits/google/google_sign_in_cubit.dart';
import 'package:talky/views/signin/ui/sign_in.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.signIn:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => GoogleSignInCubit(),
            child: const SignIn(),
          ),
        );
      case Routes.signUpEmail:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SignUpEmailCubit(),
            child: const SignUpEmailScreen()
          ),
        );
      case Routes.signInEmail:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SignInEmailCubit(),
            child: const SignInEmailScreen()
          )
        );
        case Routes.register:
        return MaterialPageRoute(builder: (_) => const RigsterScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Center(
            child: Text('NoRouting'),
          ),
        );
    }
  }
}
