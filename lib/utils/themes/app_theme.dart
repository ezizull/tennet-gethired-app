import 'package:flutter/material.dart';
import 'package:gethired/utils/theme/button_theme.dart';
import 'package:gethired/utils/theme/elevated_button_theme.dart';
import 'package:gethired/utils/theme/floating_button_theme.dart';
import 'package:gethired/utils/theme/switch_theme.dart';

import 'bar_theme.dart';
import 'colors.dart';

class AppThemes {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: AppColors.sea),
    appBarTheme: AppBarThemes.light,
    scaffoldBackgroundColor: AppColors.sea.shade50,
    buttonTheme: AppButtonThemes.light,
    elevatedButtonTheme: AppElevatedButtonThemes.light,
    switchTheme: AppSwitchThemes.light,
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.dark(primary: AppColors.sea),
    appBarTheme: AppBarThemes.dark,
    scaffoldBackgroundColor: AppColors.sea.shade900.withAlpha(100),
    floatingActionButtonTheme: AppFloatingButtonThemes.dark,
    switchTheme: AppSwitchThemes.dark,
  );
}
