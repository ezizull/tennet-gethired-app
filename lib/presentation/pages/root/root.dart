import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/presentation/pages/pages.dart';
import 'package:gethired/utils/utils.dart';

import 'widgets/bottom_bar_items.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomBarController());

    return GetBuilder<BottomBarController>(builder: (context) {
      return Scaffold(
        extendBody: true,
        resizeToAvoidBottomInset: false,
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [
            HomePage(),
            TrainingPage(),
            HomePage(),
            TrainingPage(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatButtonWidget(
            iconColor: AppColors.white,
            icon: FontAwesomeIcons.plus,
            gradient: LinearGradient(
              colors: [AppColors.blue.shade100, AppColors.blue.shade800],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            )),
        bottomNavigationBar: BottomBarItems(controller: controller),
      );
    });
  }
}
