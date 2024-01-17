import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talky/routing/app_router.dart';
import 'package:talky/routing/routes.dart';
import 'package:talky/theming/colors.dart';
import 'package:talky/views/signin/cubits/google/google_sign_in_cubit.dart';

class TalkyApp extends StatelessWidget {
  final AppRouter appRouter;
  const TalkyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: BlocProvider(
        create: (context) => GoogleSignInCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.signIn,
          onGenerateRoute: appRouter.generateRoute,
          theme: ThemeData(scaffoldBackgroundColor: ColorsManager.white),
        ),
      ),
    );
  }
}
