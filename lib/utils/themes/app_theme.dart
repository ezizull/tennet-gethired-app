import 'package:flutter/material.dart';
import 'package:gethired/utils/themes/themes.dart';

class AppThemes {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: AppColors.white),
    appBarTheme: AppBarThemes.light,
    scaffoldBackgroundColor: AppColors.white.shade50,
    buttonTheme: AppButtonThemes.light,
    elevatedButtonTheme: AppElevatedButtonThemes.light,
    switchTheme: AppSwitchThemes.light,
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.dark(primary: AppColors.white),
    appBarTheme: AppBarThemes.dark,
    scaffoldBackgroundColor: AppColors.white.shade800.withAlpha(100),
    floatingActionButtonTheme: AppFloatingButtonThemes.dark,
    switchTheme: AppSwitchThemes.dark,
  );
}
