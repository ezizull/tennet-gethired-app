import 'package:get/get.dart';

class BottomBarController extends GetxController {
  int tabIndex = 0;
  dynamic changeActiveTab(int index) {
    tabIndex = index;
    update();
    // debugPrint("check $index");
  }
}
