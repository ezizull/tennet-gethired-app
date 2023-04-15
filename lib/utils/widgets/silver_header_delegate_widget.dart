import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:gethired/utils/utils.dart';

class SilverHeaderDelegateWidget extends SliverPersistentHeaderDelegate {
  const SilverHeaderDelegateWidget();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var adjustedShrinkOffset =
        shrinkOffset > minExtent ? minExtent : shrinkOffset;

    double offset = (minExtent - adjustedShrinkOffset) * 0.04;
    double topPadding = MediaQuery.of(context).padding.top + 20;

    bool showNavigate = shrinkOffset > minExtent ? false : true;

    debugPrint("$shrinkOffset $overlapsContent");

    return Stack(
      children: [
        // background
        const AppBarWaveWidget(
          height: 200,
        ),

        // element
        Positioned(
          top: topPadding + offset,
          left: 16,
          right: 16,
          child: Column(
            children: [
              if (showNavigate) ...[
                // appbar
                Container(
                  margin: const EdgeInsets.only(bottom: 6, left: 5, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // back button
                      IconButton(
                        onPressed: () => Get.back(),
                        iconSize: 14,
                        color: AppColors.white,
                        icon: const Icon(FontAwesomeIcons.arrowLeftLong),
                      ),

                      // title
                      Text(
                        "Lunch",
                        textAlign: TextAlign.center,
                        style: AppFonts.redHatDisplay(
                          AppColors.white,
                          fontWeight: FontWeight.w800,
                        ).labelMedium,
                      ),

                      // edit button
                      IconButton(
                        onPressed: () {},
                        iconSize: 14,
                        color: AppColors.white,
                        icon: const Icon(FontAwesomeIcons.penToSquare),
                      ),
                    ],
                  ),
                ),
              ],

              // searchbar
              const SearchBarWidget(),
            ],
          ),
        ),

        // options
        Positioned(
          left: 16,
          right: 16,
          bottom: 0,
          child: Container(
            margin: EdgeInsets.only(left: showNavigate ? 70 : 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // search
                Container(
                  width: 60,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 3, color: AppColors.white),
                    ),
                  ),
                  child: FloatingActionButton(
                    onPressed: () {},
                    elevation: 0,
                    heroTag: null,
                    shape: const BeveledRectangleBorder(),
                    hoverElevation: 0,
                    highlightElevation: 0,
                    // focusElevation: 0,
                    backgroundColor: AppColors.transparent,
                    child: Text(
                      "Search",
                      style: AppFonts.redHatDisplay(
                        AppColors.white,
                        fontWeight: FontWeight.w400,
                      ).labelSmall,
                    ),
                  ),
                ),

                // my food
                Container(
                  width: 60,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 2,
                        color: AppColors.transparent,
                      ),
                    ),
                  ),
                  child: FloatingActionButton(
                    onPressed: () {},
                    elevation: 0,
                    heroTag: null,
                    shape: const BeveledRectangleBorder(),
                    hoverElevation: 0,
                    highlightElevation: 0,
                    // focusElevation: 0,
                    backgroundColor: AppColors.transparent,
                    child: Text(
                      "My Foods",
                      style: AppFonts.redHatDisplay(
                        AppColors.white.withOpacity(0.6),
                        fontWeight: FontWeight.w400,
                      ).labelSmall,
                    ),
                  ),
                ),

                // meals
                Container(
                  width: 60,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 2,
                        color: AppColors.transparent,
                      ),
                    ),
                  ),
                  child: FloatingActionButton(
                    onPressed: () {},
                    elevation: 0,
                    heroTag: null,
                    shape: const BeveledRectangleBorder(),
                    hoverElevation: 0,
                    highlightElevation: 0,
                    // focusElevation: 0,
                    backgroundColor: AppColors.transparent,
                    child: Text(
                      "Meals",
                      style: AppFonts.redHatDisplay(
                        AppColors.white.withOpacity(0.6),
                        fontWeight: FontWeight.w400,
                      ).labelSmall,
                    ),
                  ),
                ),

                // recipes
                Container(
                  width: 60,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 2,
                        color: AppColors.transparent,
                      ),
                    ),
                  ),
                  child: FloatingActionButton(
                    onPressed: () {},
                    elevation: 0,
                    heroTag: null,
                    shape: const BeveledRectangleBorder(),
                    hoverElevation: 0,
                    highlightElevation: 0,
                    // focusElevation: 0,
                    backgroundColor: AppColors.transparent,
                    child: Text(
                      "Recipes",
                      style: AppFonts.redHatDisplay(
                        AppColors.white.withOpacity(0.6),
                        fontWeight: FontWeight.w400,
                      ).labelSmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  double get maxExtent => 280;

  @override
  double get minExtent => 140;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}
