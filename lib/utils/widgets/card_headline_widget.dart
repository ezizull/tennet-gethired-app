import 'package:flutter/material.dart';
import 'package:gethired/utils/themes/themes.dart';

class CardHeadlineWidget extends StatelessWidget {
  static const BorderRadius defaultBorderRadius = BorderRadius.only(
    topLeft: Radius.circular(10),
    topRight: Radius.circular(60),
    bottomLeft: Radius.circular(10),
    bottomRight: Radius.circular(10),
  );

  const CardHeadlineWidget({
    super.key,
    this.child,
    this.color,
    this.gradient,
    this.height,
    this.width,
    this.padding,
    this.margin,
    this.borderRadius = defaultBorderRadius,
  });

  final Widget? child;
  final Color? color;
  final Gradient? gradient;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      decoration: BoxDecoration(
        color: color,
        gradient: gradient,
        borderRadius: borderRadius,
        boxShadow: [
          BoxShadow(
            color: AppColors.white.shade400.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: padding,
      child: child,
    );
  }
}
