import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/utils/utils.dart';

import 'widgets/meals_list.dart';
import 'widgets/silver_header_delegate.dart';

class MealsPage extends GetView<MealsController> {
  const MealsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: [
          // appbar
          const SliverPersistentHeader(
            floating: true,
            delegate: SilverHeaderDelegate(),
            pinned: true,
          ),

          // list
          MealsList(controller: controller)
        ],
      ),
      floatingActionButton: FloatButtonWidget(
        iconColor: AppColors.white,
        icon: FontAwesomeIcons.barcode,
        gradient: LinearGradient(
          colors: [AppColors.blue.shade100, AppColors.blue.shade800],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
    );
  }
}
