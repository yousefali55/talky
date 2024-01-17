import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:talky/firebase_options.dart';
import 'package:talky/routing/app_router.dart';
import 'package:talky/talky.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(TalkyApp(appRouter: AppRouter()));
}
