import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gethired/presentation/controllers/bottom_bar.controller.dart';
import 'package:gethired/utils/themes/colors.dart';

class BottomAppBarItem extends StatelessWidget {
  const BottomAppBarItem({
    super.key,
    required this.controller,
    required this.index,
    required this.icon,
    this.IconSize,
    this.margin,
  });

  final BottomBarController controller;
  final int index;
  final double? IconSize;
  final IconData icon;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: IconButton(
        onPressed: () => controller.changeActiveTab(index),
        icon: Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              icon,
              size: IconSize ?? 28,
              color: AppColors.white.shade600,
            ),
            CircleAvatar(
              radius: 8, // size of the circle
              backgroundColor: controller.tabIndex == index
                  ? AppColors.blue.shade600
                  : AppColors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
