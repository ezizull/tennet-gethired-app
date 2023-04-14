import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/utils/utils.dart';
import 'package:gethired/utils/widgets/cicular_percent_indicator_widget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'widgets/status_activity.dart';
import 'widgets/status_gizi.dart';
import 'widgets/meals_headline.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white.shade100,
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: [
          // header app
          const HeaderWidget(
            title: "My Diary",
            date: "15 May",
          ),

          // status headline
          TextHeadlineWidget(
            title: "Mediterranean diet",
            onTap: () {},
          ),

          // status headline
          CardHeadlineWidget(
            color: AppColors.white,
            padding:
                const EdgeInsets.only(top: 24, bottom: 15, left: 20, right: 20),
            margin:
                const EdgeInsets.only(top: 16, bottom: 20, left: 20, right: 20),
            child: Column(children: [
              // activity
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // activity
                    Column(
                      children: [
                        const StatusActivity(
                          title: "Eaten",
                          margin: EdgeInsets.only(bottom: 20),
                          lineColor: AppColors.red,
                          numberText: "1127",
                          image: AppImages.eatBowl,
                        ),
                        StatusActivity(
                          title: "Burned",
                          lineColor: AppColors.blue.shade500,
                          numberText: "102",
                          image: AppImages.fireBlue,
                        ),
                      ],
                    ),

                    // percent indicator
                    const CircularPercentIndicatorWidget(
                      title: "1503",
                      margin: EdgeInsets.only(right: 15),
                      radius: 48,
                      percent: 0.4,
                      subTitle: "Kcal left",
                    ),
                  ],
                ),
              ),

              // line
              Divider(
                color: AppColors.white.shade200,
              ),

              // gizi
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StatusGizi(
                      title: "Carbs",
                      subTitle: "12g left",
                      backgroundColor: AppColors.blue.shade50,
                      percent: 0.4,
                      colors: [
                        AppColors.blue.shade100,
                        AppColors.blue.shade300
                      ],
                    ),
                    StatusGizi(
                      title: "Protein",
                      subTitle: "30g left",
                      backgroundColor: AppColors.red.shade100,
                      percent: 0.4,
                      colors: [
                        AppColors.red.shade300,
                        AppColors.red.shade500,
                      ],
                    ),
                    StatusGizi(
                      title: "Fat",
                      subTitle: "10g left",
                      backgroundColor: AppColors.yellow.shade100,
                      percent: 0.8,
                      colors: [
                        AppColors.yellow.shade600,
                        AppColors.yellow.shade800
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ),

          // meals headline
          TextHeadlineWidget(
            title: "Meals Today",
            onTap: () {},
          ),

          // meals headline
          Container(
            height: 165,
            margin: const EdgeInsets.only(top: 10),
            child: const MealsHeadline(),
          )
        ],
      ),
    );
  }
}
