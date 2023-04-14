import 'package:flutter/material.dart';
import 'package:gethired/utils/utils.dart';

class MealsHeadline extends StatelessWidget {
  const MealsHeadline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      children: [
        // breakfast
        CardImageWidget(
          gradient: LinearGradient(
            colors: [
              Colors.pink.shade100,
              Colors.red.shade300,
            ],
            stops: const [
              0.0,
              0.8,
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
          width: 100,
          imgWidth: 50,
          shadowColor: AppColors.red.shade300.withOpacity(0.2),
          margin: const EdgeInsets.only(left: 20),
          image: AppImages.breakfastDonut,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // title
                Container(
                  margin: const EdgeInsets.only(top: 34),
                  child: Text(
                    "Breakfast",
                    style: AppFonts.redHatDisplay(
                      AppColors.white,
                    ).labelSmall,
                  ),
                ),

                // body
                Container(
                  margin: const EdgeInsets.only(top: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bread,",
                        style: AppFonts.redHatDisplay(
                          AppColors.white,
                          height: 1,
                        ).bodySmall,
                      ),
                      Text(
                        "Peanut butter,",
                        style: AppFonts.redHatDisplay(
                          AppColors.white,
                          height: 1,
                        ).bodySmall,
                      ),
                      Text(
                        "Apple",
                        style: AppFonts.redHatDisplay(
                          AppColors.white,
                          height: 1,
                        ).bodySmall,
                      ),
                    ],
                  ),
                ),

                // satuan
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // value
                      Text(
                        "525",
                        style: AppFonts.redHatDisplay(
                          AppColors.white,
                          height: 1,
                        ).titleMedium,
                      ),

                      // space
                      const SizedBox(width: 2.5),

                      // satuan
                      Text(
                        "kcal",
                        style: AppFonts.redHatDisplay(
                          AppColors.white,
                          height: 1,
                        ).bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        // lunch
        CardImageWidget(
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade800,
              Colors.blue.shade600,
            ],
            stops: const [
              0.0,
              0.8,
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
          width: 100,
          imgWidth: 50,
          shadowColor: AppColors.red.shade300.withOpacity(0.2),
          margin: const EdgeInsets.only(left: 15),
          image: AppImages.lunchKakigori,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // title
                Container(
                  margin: const EdgeInsets.only(top: 34),
                  child: Text(
                    "Lunch",
                    style: AppFonts.redHatDisplay(
                      AppColors.white,
                    ).labelSmall,
                  ),
                ),

                // body
                Container(
                  margin: const EdgeInsets.only(top: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Salmon,",
                        style: AppFonts.redHatDisplay(
                          AppColors.white,
                          height: 1,
                        ).bodySmall,
                      ),
                      Text(
                        "Mixed veggies,",
                        style: AppFonts.redHatDisplay(
                          AppColors.white,
                          height: 1,
                        ).bodySmall,
                      ),
                      Text(
                        "Avocado",
                        style: AppFonts.redHatDisplay(
                          AppColors.white,
                          height: 1,
                        ).bodySmall,
                      ),
                    ],
                  ),
                ),

                // satuan
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // value
                      Text(
                        "602",
                        style: AppFonts.redHatDisplay(
                          AppColors.white,
                          height: 1,
                        ).titleMedium,
                      ),

                      // space
                      const SizedBox(width: 2.5),

                      // satuan
                      Text(
                        "kcal",
                        style: AppFonts.redHatDisplay(
                          AppColors.white,
                          height: 1,
                        ).bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        // snack
        CardImageWidget(
          gradient: LinearGradient(
            colors: [
              Colors.red.shade500,
              Colors.red.shade300,
            ],
            stops: const [
              0.0,
              0.8,
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
          width: 100,
          imgWidth: 50,
          shadowColor: AppColors.red.shade300.withOpacity(0.2),
          margin: const EdgeInsets.only(left: 15),
          image: AppImages.snackBerries,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // title
                Container(
                  margin: const EdgeInsets.only(top: 34),
                  child: Text(
                    "Snack",
                    style: AppFonts.redHatDisplay(
                      AppColors.white,
                    ).labelSmall,
                  ),
                ),

                // body
                Container(
                  margin: const EdgeInsets.only(top: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Recommend:",
                        style: AppFonts.redHatDisplay(
                          AppColors.white,
                          height: 1,
                        ).bodySmall,
                      ),
                      Text(
                        "800 kcal",
                        style: AppFonts.redHatDisplay(
                          AppColors.white,
                          height: 1,
                        ).bodySmall,
                      ),
                    ],
                  ),
                ),

                // satuan
                CenterPlusButton(
                  width: 32,
                  height: 32,
                  margin: const EdgeInsets.only(top: 15),
                  plusColor: AppColors.red.shade400,
                  color: AppColors.white,
                  elevation: 10,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
