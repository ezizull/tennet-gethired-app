import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gethired/presentation/routes/routes.dart';
import 'package:gethired/presentation/routes/get_pages.dart';
import 'package:gethired/utils/themes/themes.dart';
import 'package:gethired/utils/languages/languages.dart';

void main() async {
  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
  const Main(this.initialRoute, {super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      getPages: GetPages.router,
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      themeMode: ThemeMode.system,
      translationsKeys: AppTranslation.translations,
      locale: const Locale('en', 'EN'),
    );
  }
}
