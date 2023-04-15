import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  // readheat fonts
  static TextTheme redHatDisplay(
    Color? color, {
    double? height,
    FontWeight? fontWeight,
  }) {
    return TextTheme(
      // title
      titleLarge: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 22,
        letterSpacing: 0.5,
        height: height,
        fontWeight: fontWeight ?? FontWeight.w800,
      ),
      titleMedium: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 20,
        letterSpacing: 0.5,
        height: height,
        fontWeight: fontWeight ?? FontWeight.w600,
      ),
      titleSmall: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 14,
        letterSpacing: 0.5,
        fontWeight: fontWeight ?? FontWeight.w600,
      ),

      // label
      labelMedium: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 16,
        letterSpacing: 0.5,
        height: height,
        fontWeight: fontWeight ?? FontWeight.w600,
      ),
      labelSmall: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 13,
        letterSpacing: 0.5,
        height: height,
        fontWeight: fontWeight ?? FontWeight.w600,
      ),

      // display
      displaySmall: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 11,
        letterSpacing: 0.5,
        height: height,
        fontWeight: fontWeight ?? FontWeight.w600,
      ),

      // body
      bodyLarge: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 18,
        height: height,
        fontWeight: fontWeight ?? FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 14,
        letterSpacing: 0.5,
        height: height,
        fontWeight: fontWeight ?? FontWeight.w400,
      ),
      bodySmall: GoogleFonts.redHatDisplay(
        color: color,
        fontSize: 11,
        letterSpacing: 0.5,
        height: height,
        fontWeight: fontWeight ?? FontWeight.w400,
      ),
    );
  }
}
