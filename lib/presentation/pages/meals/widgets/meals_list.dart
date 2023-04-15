import 'package:flutter/material.dart';
import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/utils/utils.dart';

class MealsList extends StatelessWidget {
  const MealsList({
    super.key,
    required this.controller,
  });

  final MealsController controller;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          int nextIndex = index < launch.length - 1 ? index + 1 : index;
          int oldIndex = index > 0 ? index - 1 : index + 1;

          bool sameStatus = launch[index].status == launch[nextIndex].status;
          bool showStatus = launch[index].status != launch[oldIndex].status;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // status
              if (showStatus) ...[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    launch[index].status,
                    style: AppFonts.redHatDisplay(
                      AppColors.white.shade600,
                      height: 2.5,
                    ).labelSmall,
                  ),
                ),
              ],

              // content
              Container(
                margin: EdgeInsets.only(bottom: !sameStatus ? 20 : 0),
                child: InkWell(
                  onTap: () {},
                  splashColor: AppColors.blue.shade50.withOpacity(0.5),
                  child: Ink(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.white.shade300.withOpacity(0.6),
                          spreadRadius: !sameStatus ? 1 : 0.5,
                          blurRadius: !sameStatus ? 10 : 1,
                          offset: Offset(0, !sameStatus ? 4 : 0),
                        ),
                      ],
                    ),
                    child: Text(
                      launch[index].name,
                      style: AppFonts.redHatDisplay(
                        AppColors.black,
                      ).labelSmall,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        childCount: launch.length,
      ),
    );
  }
}
