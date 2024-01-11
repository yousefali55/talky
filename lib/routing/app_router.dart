import 'package:flutter/material.dart';
import 'package:talky/routing/routes.dart';
import 'package:talky/views/sign_in_email/ui/sign_in_email.dart';
import 'package:talky/views/sign_up_email/sign_up_email.dart';
import 'package:talky/views/signin/ui/sign_in.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.signIn:
        return MaterialPageRoute(
          builder: (_) => const SignIn(),
        );
      case Routes.signUpEmail:
        return MaterialPageRoute(
          builder: (_) => const SignUpEmail(),
        );
      case Routes.signInEmail:
        return MaterialPageRoute(
          builder: (_) => const SignInEmail(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Center(
            child: Text('NoRouting'),
          ),
        );
    }
  }
}
