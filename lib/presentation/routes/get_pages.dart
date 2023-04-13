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

    // home
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];

  static GetPage notFound = GetPage(
    name: Routes.NOTFOUND,
    page: () => const NotFoundPage(),
  );
}
