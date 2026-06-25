import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_tool_kit/presentation/pages/kcal/kcal_main_state.dart';

abstract class KcalMainNotifier extends StateNotifier<KcalMainState> {
  KcalMainNotifier(super.state);

  void onTapAdd();
  void onTapEdit();
}

class KcalMainNotifierImpl extends KcalMainNotifier {
  KcalMainNotifierImpl() : super(KcalMainState(totalKcal: 0, foodList: []));

  @override
  void onTapAdd() {
    // TODO: implement onTapAdd
  }

  @override
  void onTapEdit() {
    // TODO: implement onTapEdit
  }
}
