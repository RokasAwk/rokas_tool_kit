import 'package:freezed_annotation/freezed_annotation.dart';

part 'kcal_main_state.freezed.dart';

@freezed
abstract class KcalMainState with _$KcalMainState {
  factory KcalMainState({required int totalKcal}) = Init;
}
