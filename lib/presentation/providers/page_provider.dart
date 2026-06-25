import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_tool_kit/presentation/pages/kcal/kcal_main_notifier.dart';
import 'package:rokas_tool_kit/presentation/pages/kcal/kcal_main_state.dart';

import '../pages/home/home_notifier.dart';

final homeStateNotifierProvider = Provider.autoDispose<HomeNotifier>((ref) {
  return HomeNotifierImpl();
});

final kcalMainStateNotifierProvider =
    StateNotifierProvider.autoDispose<KcalMainNotifier, KcalMainState>((ref) {
      return KcalMainNotifierImpl();
    });
