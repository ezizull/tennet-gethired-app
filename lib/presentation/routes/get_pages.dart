import 'package:get/get.dart';
import 'package:gethired/presentation/bindings/bindings.dart';
import 'package:gethired/presentation/pages/home/home.dart';
import 'package:gethired/presentation/routes/routes.dart';

class GetPages {
  static List<GetPage> router = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
