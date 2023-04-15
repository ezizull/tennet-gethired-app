import 'meals_detail_model.dart';

class Meals {
  Meals({
    required this.name,
    required this.details,
  });

  final String name;
  final List<MealsDetail> details;
}
