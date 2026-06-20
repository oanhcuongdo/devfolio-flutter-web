import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final themeLight = ThemeData(
  primaryColorLight: Colors.black,
  brightness: Brightness.light,
  primaryColor: Colors.black,
  highlightColor: Colors.black,
  canvasColor: Colors.white,
  textTheme: GoogleFonts.interTextTheme(ThemeData.light().textTheme),
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: const Color(0xfffbfbfd), // Apple slightly off-white
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey).copyWith(
    secondary: Colors.blueAccent,
    brightness: Brightness.light,
  ),
);

final themeDark = ThemeData(
  brightness: Brightness.dark,
  primaryColorDark: Colors.white,
  primaryColor: Colors.white,
  highlightColor: Colors.white,
  canvasColor: const Color(0xff1d1d1f),
  textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: const Color(0xff000000), // Pure black
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey).copyWith(
    secondary: Colors.blueAccent,
    brightness: Brightness.dark,
  ),
);
