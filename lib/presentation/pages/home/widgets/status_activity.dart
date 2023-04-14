import 'package:flutter/material.dart';
import 'package:gethired/utils/themes/themes.dart';

class StatusActivity extends StatelessWidget {
  const StatusActivity({
    super.key,
    required this.title,
    required this.numberText,
    this.satuan = "Kcal",
    required this.lineColor,
    required this.image,
    this.margin,
  });

  final String title;
  final String numberText;
  final String satuan;
  final Color lineColor;

  final ImageProvider<Object> image;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(children: [
        Container(
          width: 2,
          height: 40,
          color: lineColor,
          margin: const EdgeInsets.only(right: 10),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppFonts.redHatDisplay(
                AppColors.white.shade600,
              ).labelSmall,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 20,
                  child: Image(image: image),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 4, right: 3),
                  child: Text(
                    numberText,
                    style: AppFonts.redHatDisplay(
                      AppColors.black,
                    ).labelSmall,
                  ),
                ),
                Text(
                  satuan,
                  style: AppFonts.redHatDisplay(
                    AppColors.white.shade500,
                  ).displaySmall,
                ),
              ],
            )
          ],
        ),
      ]),
    );
  }
}
