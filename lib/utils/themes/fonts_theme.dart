import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextTheme redHatDisplay(Color? color, {double? height}) {
    return TextTheme(
      titleLarge: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 22,
        letterSpacing: 0.5,
        height: height,
        fontWeight: FontWeight.w800,
      ),
      titleMedium: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 20,
        letterSpacing: 0.5,
        height: height,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 14,
        letterSpacing: 0.5,
        fontWeight: FontWeight.w600,
      ),
      labelSmall: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 13,
        letterSpacing: 0.5,
        height: height,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 11,
        letterSpacing: 0.5,
        height: height,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 18,
        height: height,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 14,
        letterSpacing: 0.5,
        height: height,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 11,
        letterSpacing: 0.5,
        height: height,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
