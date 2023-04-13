import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/presentation/pages/home/home.dart';

import 'widgets/bottom_bar_items.dart';
import 'widgets/center_button.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomBarController());

    return GetBuilder<BottomBarController>(builder: (context) {
      return Scaffold(
        extendBody: true,
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [
            HomePage(),
            HomePage(),
            HomePage(),
            HomePage(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const CenterPlusButton(),
        bottomNavigationBar: BottomBarItems(controller: controller),
      );
    });
  }
}
