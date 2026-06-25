import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rokas_tool_kit/domain/value_object/foodItem.dart';

part 'kcal_main_state.freezed.dart';

@freezed
abstract class KcalMainState with _$KcalMainState {
  factory KcalMainState({
    required int totalKcal,
    required List<FoodItem> foodList,
  }) = Init;
}
