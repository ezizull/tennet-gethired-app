class MealsDetail {
  MealsDetail({
    required this.name,
    required this.status,
    required this.kcal,
    this.desc = "",
  });

  final String name;
  final String status;
  final int kcal;
  final String desc;
}
