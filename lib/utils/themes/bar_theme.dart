import 'package:flutter/material.dart';

import 'colors.dart';

class AppBarThemes {
  static AppBarTheme light = const AppBarTheme(
    backgroundColor: AppColors.white,
    foregroundColor: Colors.white,
    elevation: 5,
    scrolledUnderElevation: 10,
  );

  static AppBarTheme dark = AppBarTheme(
    backgroundColor: AppColors.white.shade800.withAlpha(50),
    foregroundColor: AppColors.white.shade50,
    elevation: 5,
    scrolledUnderElevation: 10,
  );
}
