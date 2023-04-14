import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/utils/utils.dart';

import 'widgets/meals_headline.dart';
import 'widgets/status_headline.dart';

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
          const StatusHeadline(),

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
