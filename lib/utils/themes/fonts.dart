import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextTheme redHatDisplay(Color? color) {
    return TextTheme(
      displayLarge: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 22,
        letterSpacing: 0.5,
        fontWeight: FontWeight.w800,
      ),
      bodyMedium: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
