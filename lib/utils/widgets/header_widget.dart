import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gethired/utils/themes/themes.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.title,
    required this.date,
  });

  final String title;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // title
          Text(
            title,
            style: AppFonts.redHatDisplay(
              AppColors.black.shade700,
            ).titleLarge,
          ),

          // date
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // arrow
              Container(
                margin: const EdgeInsets.only(right: 15),
                child: const Icon(FontAwesomeIcons.angleLeft, size: 14),
              ),

              // date
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 6),
                    child: const Icon(
                      FontAwesomeIcons.calendar,
                      size: 17,
                    ),
                  ),
                  Text(
                    date,
                    style: AppFonts.redHatDisplay(
                      AppColors.black.shade700,
                    ).bodyMedium,
                  ),
                ],
              ),

              // arrow
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: const Icon(FontAwesomeIcons.angleRight, size: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
