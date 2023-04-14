import 'package:flutter/material.dart';

import 'colors_theme.dart';

class AppSwitchThemes {
  static SwitchThemeData light = SwitchThemeData(
    trackColor: MaterialStateProperty.resolveWith((states) {
      return AppColors.white.shade900;
    }),
    thumbColor: MaterialStateProperty.resolveWith((states) {
      return AppColors.white.shade700;
    }),
  );

  static SwitchThemeData dark = SwitchThemeData(
    trackColor: MaterialStateProperty.resolveWith((states) {
      return AppColors.white.shade900;
    }),
    thumbColor: MaterialStateProperty.resolveWith((states) {
      return AppColors.white;
    }),
  );
}
