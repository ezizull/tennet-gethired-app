import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gethired/utils/themes/colors_theme.dart';

class FloatButtonWidget extends StatelessWidget {
  static const defaultSplashColor = Color(0x33FFFFFF);

  const FloatButtonWidget({
    super.key,
    this.color,
    this.gradient,
    this.iconColor,
    this.splashColor = defaultSplashColor,
    this.margin,
    this.padding,
    this.width,
    this.height,
    this.elevation = 0,
    this.icon,
  });

  final Color? color;
  final Color? iconColor;
  final Color? splashColor;
  final Gradient? gradient;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final double? width;
  final double? height;
  final double? elevation;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        margin: margin,
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          gradient: gradient,
          shape: BoxShape.circle,
        ),
        child: FloatingActionButton(
          onPressed: () {},
          heroTag: null,
          backgroundColor: color ?? AppColors.transparent,
          shape: const StadiumBorder(),
          elevation: elevation,
          splashColor: splashColor,
          child: Icon(icon, color: iconColor),
        ));
  }
}
