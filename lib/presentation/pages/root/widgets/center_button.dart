import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gethired/utils/themes/colors.dart';

class CenterPlusButton extends StatelessWidget {
  const CenterPlusButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.blue.shade100, AppColors.blue.shade800],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
          shape: BoxShape.circle,
        ),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.transparent,
          shape: const StadiumBorder(),
          elevation: 0,
          child: const Icon(FontAwesomeIcons.plus, color: AppColors.white),
        ));
  }
}
