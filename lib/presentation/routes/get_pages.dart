import 'package:get/get.dart';
import 'package:gethired/presentation/bindings/bindings.dart';
import 'package:gethired/presentation/pages/pages.dart';
import 'package:gethired/presentation/routes/routes.dart';

class GetPages {
  static List<GetPage> router = [
    // root
    GetPage(
      name: Routes.ROOT,
      page: () => const RootPage(),
      binding: RootBinding(),
    ),

    // meals
    GetPage(
      name: Routes.MEALS,
      page: () => const MealsPage(),
      binding: MealsBinding(),
    ),
  ];

  // notfound
  static GetPage notFound = GetPage(
    name: Routes.NOTFOUND,
    page: () => const NotFoundPage(),
  );
}
