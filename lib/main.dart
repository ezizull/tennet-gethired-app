import 'package:responsive_framework/responsive_framework.dart';
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
      builder: (context, child) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, child!),
        maxWidth: 1300,
        minWidth: 400,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(400, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(600, name: TABLET),
          const ResponsiveBreakpoint.resize(800, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(1300, name: 'XL'),
        ],
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      unknownRoute: GetPages.notFound,
      getPages: GetPages.router,
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      themeMode: ThemeMode.system,
      translationsKeys: AppTranslation.translations,
      locale: const Locale('en', 'EN'),
    );
  }
}
