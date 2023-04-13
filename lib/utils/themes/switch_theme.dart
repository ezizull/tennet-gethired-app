import 'package:flutter/material.dart';

import 'colors.dart';

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
