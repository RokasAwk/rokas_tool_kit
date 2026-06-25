class FoodItem {
  final DateTime time; // 建立時間
  final String name; // 食物名稱
  final double cal; // 卡路里
  final double carbohydrate; // 碳水
  final double protein; // 蛋白質
  final double fat; // 脂肪

  FoodItem({
    required this.time,
    required this.name,
    required this.cal,
    required this.carbohydrate,
    required this.protein,
    required this.fat,
  });
}
