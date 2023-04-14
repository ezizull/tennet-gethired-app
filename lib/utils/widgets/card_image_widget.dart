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

  static void defaultOnTap() {}

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
    this.onTap = defaultOnTap,
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
  final BorderRadius? borderRadius;
  final ImageProvider<Object> image;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // card
          ClipRRect(
            borderRadius: borderRadius,
            child: InkWell(
              onTap: onTap,
              borderRadius: borderRadius,
              splashColor: AppColors.white.withOpacity(0.2),
              child: Ink(
                height: height,
                width: width,
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
                child: Stack(children: [
                  Positioned(
                    left: -5,
                    top: -30,
                    child: CircleAvatar(
                      radius: 36,
                      backgroundColor:
                          AppColors.white.shade100.withOpacity(0.2),
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
          ),

          // image
          Positioned(
            left: 10,
            top: 0,
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
