import 'package:get/get.dart';
import 'package:gethired/presentation/controllers/bottom_bar.controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomBarController>(() => BottomBarController());
  }
}
