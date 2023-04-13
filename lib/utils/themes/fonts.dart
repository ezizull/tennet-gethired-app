import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextTheme redHatDisplay(Color? color) {
    return TextTheme(
      titleLarge: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 22,
        letterSpacing: 0.5,
        fontWeight: FontWeight.w800,
      ),
      titleSmall: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 14,
        letterSpacing: 0.5,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 14,
        letterSpacing: 0.5,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
