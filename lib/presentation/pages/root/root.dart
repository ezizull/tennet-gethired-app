import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/presentation/pages/home/home.dart';
import 'package:gethired/utils/themes/colors.dart';

import 'widgets/icon_list.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
            child: IndexedStack(
          index: controller.tabIndex,
          children: const [
            HomePage(),
            HomePage(),
          ],
        )),
        floatingActionButton: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.blue.shade100, AppColors.blue.shade800],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
              shape: BoxShape.circle,
            ),
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: AppColors.transparent,
              shape: const StadiumBorder(),
              elevation: 0,
              child: const Icon(FontAwesomeIcons.plus, color: AppColors.white),
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: bottomBarListIcon,
          activeIndex: controller.tabIndex,
          activeColor: AppColors.blue,
          gapLocation: GapLocation.center,
          splashColor: AppColors.blue.shade100,
          iconSize: 18,
          notchSmoothness: NotchSmoothness.defaultEdge,
          onTap: controller.changeActiveTab,
        ),
      );
    });
  }
}
