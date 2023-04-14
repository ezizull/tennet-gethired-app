import 'package:flutter/material.dart';

import 'colors_theme.dart';

class AppElevatedButtonThemes {
  static ElevatedButtonThemeData light = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor:
          MaterialStateProperty.resolveWith((states) => AppColors.white),
      foregroundColor:
          MaterialStateProperty.resolveWith((states) => Colors.white),
    ),
  );
}
