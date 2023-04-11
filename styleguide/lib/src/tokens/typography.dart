import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTypography {
  static TextTheme lightTextTheme = GoogleFonts.openSansTextTheme();
  static TextTheme darkTextTheme = GoogleFonts.varelaRoundTextTheme(
    ThemeData(brightness: Brightness.dark).textTheme,
  );
  static TextStyle varela = GoogleFonts.varela();
  static TextStyle varelaBold = GoogleFonts.varela().copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 12,
    letterSpacing: 1,
  );
}
