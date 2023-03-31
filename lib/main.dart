import 'package:flutter/material.dart';
import 'package:qit_flutter/app.dart';
import 'package:qit_flutter/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection("DEV");
  runApp(const QitFlutterApp());
}
