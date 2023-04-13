import 'package:get/get.dart';
import 'package:gethired/presentation/controllers/controllers.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomBarController>(() => BottomBarController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
