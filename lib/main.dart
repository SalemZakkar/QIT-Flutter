import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:qit_flutter/app.dart';
import 'package:qit_flutter/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await configureInjection("DEV");
  runApp(EasyLocalization(
      saveLocale: true,
      path: "assets/translations",
      fallbackLocale: const Locale("en"),
      supportedLocales: const [
        Locale("en"),
        Locale("ar"),
      ],
      child: const QitFlutterApp()));
}
