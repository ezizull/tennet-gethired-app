import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/utils/utils.dart';

class TrainingPage extends GetView<TrainingController> {
  const TrainingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white.shade100,
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: const [
          HeaderWidget(
            title: "Training",
            date: "15 May",
          ),
        ],
      ),
    );
  }
}
