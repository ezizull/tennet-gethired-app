import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gethired/utils/themes/themes.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        style: AppFonts.redHatDisplay(AppColors.black).bodyMedium,
        cursorColor: AppColors.blue,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          focusColor: AppColors.blue.shade200,
          focusedBorder: _border(AppColors.blue.shade200),
          border: _border(AppColors.white.shade200),
          enabledBorder: _border(AppColors.white.shade200),
          hintText: 'Start food or brand',
          hintStyle: AppFonts.redHatDisplay(
            AppColors.black.withOpacity(0.55),
          ).bodyMedium,
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          prefixIcon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: AppColors.white.shade400,
            size: 16,
          ),
        ),
        onFieldSubmitted: (value) {},
      ),
    );
  }

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderSide: BorderSide(width: 0.5, color: color),
        borderRadius: BorderRadius.circular(40),
      );
}
