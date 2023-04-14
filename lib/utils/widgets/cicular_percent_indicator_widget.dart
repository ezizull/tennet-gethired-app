import 'package:flutter/material.dart';
import 'package:gethired/utils/themes/themes.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularPercentIndicatorWidget extends StatelessWidget {
  const CircularPercentIndicatorWidget({
    super.key,
    this.margin,
    required this.radius,
    this.percent = 0.0,
    this.title,
    this.subTitle,
  });

  final EdgeInsets? margin;
  final double radius;
  final double percent;
  final String? title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircularPercentIndicator(
            lineWidth: 12,
            radius: radius,
            percent: percent,
            backgroundWidth: 3,
            circularStrokeCap: CircularStrokeCap.round,
            backgroundColor: AppColors.white.shade300,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (title != null) ...[
                  Text(
                    title!,
                    style: AppFonts.redHatDisplay(
                      AppColors.blue.shade500,
                    ).titleMedium,
                  ),
                ],
                if (subTitle != null) ...[
                  Text(
                    subTitle!,
                    style: AppFonts.redHatDisplay(
                      AppColors.white.shade500,
                    ).displaySmall,
                  ),
                ],
              ],
            ),
            linearGradient: LinearGradient(
              colors: [AppColors.blue.shade100, AppColors.blue.shade800],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
          Positioned(
            child: CircularPercentIndicator(
              lineWidth: 12,
              radius: radius,
              percent: percent,
              backgroundWidth: 0,
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: AppColors.transparent,
              maskFilter: const MaskFilter.blur(BlurStyle.normal, 2),
              linearGradient: LinearGradient(
                colors: [AppColors.blue.shade100, AppColors.blue.shade800],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
          Positioned(
            child: CircularPercentIndicator(
              lineWidth: 6,
              radius: radius - 3,
              percent: 0.001,
              backgroundWidth: 0,
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: AppColors.transparent,
              startAngle: 360 * percent,
              progressColor: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
