import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_tool_kit/presentation/pages/kcal/kcal_main_state.dart';

abstract class KcalMainNotifier extends StateNotifier<KcalMainState> {
  KcalMainNotifier(super.state);
}

class KcalMainNotifierImpl extends KcalMainNotifier {
  KcalMainNotifierImpl() : super(KcalMainState(totalKcal: 0));
}
