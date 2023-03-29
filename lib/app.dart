import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qit_flutter/presentation/auth/signup/pages/signup_page/signup_page.dart';
import 'package:qit_flutter/presentation/core/sources/light_theme.dart';

class QitFlutterApp extends StatefulWidget {
  const QitFlutterApp({Key? key}) : super(key: key);

  @override
  State<QitFlutterApp> createState() => _QitFlutterAppState();
}

class _QitFlutterAppState extends State<QitFlutterApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: child,
            theme: lightTheme,
          );
        },
        child: const SignUpPage());
  }
}
