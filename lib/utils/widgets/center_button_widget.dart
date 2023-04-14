import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gethired/utils/themes/colors_theme.dart';

class CenterPlusButton extends StatelessWidget {
  const CenterPlusButton({
    super.key,
    this.color,
    this.gradient,
    this.plusColor,
    this.margin,
    this.padding,
    this.width,
    this.height,
    this.elevation = 0,
  });

  final Color? color;
  final Color? plusColor;
  final Gradient? gradient;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final double? width;
  final double? height;
  final double? elevation;

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
          backgroundColor: color ?? AppColors.transparent,
          shape: const StadiumBorder(),
          elevation: elevation,
          child: Icon(FontAwesomeIcons.plus, color: plusColor),
        ));
  }
}
