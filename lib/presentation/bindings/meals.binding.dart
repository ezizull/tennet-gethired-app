import 'package:get/get.dart';
import 'package:gethired/presentation/controllers/controllers.dart';

class MealsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MealsController>(() => MealsController());
  }
}
