import 'package:flutter/material.dart';
import 'package:gethired/utils/themes/themes.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class StatusGizi extends StatelessWidget {
  const StatusGizi({
    super.key,
    required this.title,
    required this.subTitle,
    required this.colors,
    this.backgroundColor,
    this.width = 60,
    this.percent = 0.0,
  });

  final String title;
  final String subTitle;
  final List<Color> colors;
  final Color? backgroundColor;
  final double width;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppFonts.redHatDisplay(
            AppColors.black,
          ).labelSmall,
        ),
        Container(
          margin: const EdgeInsets.only(top: 1, bottom: 3),
          child: LinearPercentIndicator(
            width: width,
            padding: EdgeInsets.zero,
            backgroundColor: backgroundColor,
            barRadius: const Radius.circular(10),
            percent: percent,
            lineHeight: 5,
            linearGradient: LinearGradient(
              colors: colors,
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
        Text(
          subTitle,
          style: AppFonts.redHatDisplay(
            AppColors.white.shade500,
          ).displaySmall,
        ),
      ],
    );
  }
}
