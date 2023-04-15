import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/utils/utils.dart';

class MealsPage extends GetView<MealsController> {
  const MealsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: [
          const SliverPersistentHeader(
            floating: true,
            delegate: SilverHeaderDelegateWidget(),
            pinned: true,
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(16),
                child: const Text(
                  'Cruelty-free brand',
                  style: TextStyle(fontSize: 20),
                ));
          }, childCount: 20))
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
