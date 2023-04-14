import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gethired/utils/themes/themes.dart';
import 'package:simple_shadow/simple_shadow.dart';

class CardImageWidget extends StatelessWidget {
  static const BorderRadius defaultBorderRadius = BorderRadius.only(
    topLeft: Radius.circular(10),
    topRight: Radius.circular(40),
    bottomLeft: Radius.circular(10),
    bottomRight: Radius.circular(10),
  );

  static const Color defaultShadowColor = Colors.black12;

  const CardImageWidget({
    super.key,
    this.child,
    this.color,
    this.gradient,
    this.height,
    this.width,
    this.shadowColor = defaultShadowColor,
    this.imgHeight,
    this.imgWidth,
    this.margin,
    this.borderRadius = defaultBorderRadius,
    required this.image,
  });

  final Widget? child;
  final Color? color;
  final Gradient? gradient;
  final double? height;
  final double? width;
  final double? imgHeight;
  final double? imgWidth;
  final Color shadowColor;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;
  final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Stack(
        children: [
          // card
          InkWell(
            onTap: () {},
            child: Container(
              height: height,
              width: width,
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: color,
                gradient: gradient,
                borderRadius: borderRadius,
                boxShadow: [
                  BoxShadow(
                    color: shadowColor,
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              clipBehavior: Clip.hardEdge,
              child: Stack(children: [
                Positioned(
                  left: -5,
                  top: -30,
                  child: CircleAvatar(
                    radius: 36,
                    backgroundColor: AppColors.white.shade100.withOpacity(0.2),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: child,
                )
              ]),
            ),
          ),

          // image
          Positioned(
            left: 10,
            child: Stack(
              children: [
                // image
                SizedBox(
                  width: imgWidth,
                  height: imgHeight,
                  child: SimpleShadow(
                    sigma: 6,
                    opacity: 0.3,
                    color: AppColors.black.shade800,
                    child: Image(image: image),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
