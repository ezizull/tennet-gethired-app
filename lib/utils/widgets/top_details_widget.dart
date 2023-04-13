import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gethired/utils/themes/themes.dart';

class TopDetails extends StatelessWidget {
  const TopDetails({
    super.key,
    required this.title,
    this.onTap,
  });

  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style:
                  AppFonts.redHatDisplay(AppColors.white.shade700).titleSmall),
          InkWell(
            onTap: () => onTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: Text("Details",
                        style: AppFonts.redHatDisplay(AppColors.blue.shade500)
                            .bodySmall)),
                const Icon(FontAwesomeIcons.arrowRight, size: 12)
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
