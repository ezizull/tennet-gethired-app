import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/presentation/pages/home/home.dart';
import 'package:gethired/utils/themes/colors.dart';

import 'widgets/icon_list.dart';

class RootPage extends GetView<BottomBarController> {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: IndexedStack(
        index: controller.tabIndex,
        children: const [
          HomePage(),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.white,
        shape: const StadiumBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: bottomBarListIcon,
        activeIndex: controller.tabIndex,
        gapLocation: GapLocation.center,
        iconSize: 16,
        notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (index) => controller.changeActiveTab(index),
      ),
    );
  }
}
