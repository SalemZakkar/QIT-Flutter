import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFFFE9A36),
    primarySwatch: Colors.yellow,
    scaffoldBackgroundColor: const Color(0xFFF6F8FA),
    cardColor: const Color(0xFFFFFFFF),
    appBarTheme: AppBarTheme(
        elevation: 0,
        toolbarHeight: 80.h,
        backgroundColor: const Color(0xFFF6F8FA),
        iconTheme: const IconThemeData(color: Color(0xFF444449))),
    textTheme: const TextTheme(
        displayMedium: TextStyle(color: Colors.black),
        displaySmall: TextStyle(color: Color(0xFFC2C4C6))),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      hintStyle: TextStyle(fontSize: 13.sp),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: const BorderSide(color: Colors.grey)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: const BorderSide(color: Colors.grey)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: const BorderSide(color: Colors.black)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 18.sp))),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            foregroundColor: Colors.grey,
            textStyle: TextStyle(fontSize: 12.sp))),
    textSelectionTheme: TextSelectionThemeData(
        selectionHandleColor: const Color(0xFFFE9A36),
        selectionColor: const Color(0xFFFE9A36).withOpacity(0.4),
        cursorColor: const Color(0xFFFE9A36)));
