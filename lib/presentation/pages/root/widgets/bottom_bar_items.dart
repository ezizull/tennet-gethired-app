import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gethired/presentation/controllers/bottom_bar.controller.dart';
import 'package:gethired/utils/themes/colors.dart';

import 'bottom_bar_item.dart';

class BottomBarItems extends StatelessWidget {
  const BottomBarItems({
    super.key,
    required this.controller,
  });

  final BottomBarController controller;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      padding: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      child: Container(
        color: AppColors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BottomAppBarItem(
              controller: controller,
              icon: FontAwesomeIcons.addressBook,
              index: 0,
            ),
            BottomAppBarItem(
              controller: controller,
              margin: const EdgeInsets.only(right: 30),
              icon: FontAwesomeIcons.heart,
              IconSize: 30,
              index: 1,
            ),
            BottomAppBarItem(
              controller: controller,
              margin: const EdgeInsets.only(left: 30),
              icon: FontAwesomeIcons.lemon,
              index: 2,
            ),
            BottomAppBarItem(
              controller: controller,
              icon: FontAwesomeIcons.faceSmile,
              index: 3,
            ),
          ],
        ),
      ),
    );
  }
}
