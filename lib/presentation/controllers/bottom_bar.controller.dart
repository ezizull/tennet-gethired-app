import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gethired/presentation/routes/routes.dart';

class BottomBarController extends GetxController {
  int tabIndex = 0;
  dynamic changeActiveTab(int index) {
    tabIndex = index;
    update();
    // debugPrint("check $index");
  }
}
