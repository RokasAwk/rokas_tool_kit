import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../pages/home/home_notifier.dart';

final homeStateNotifierProvider = Provider.autoDispose<HomeNotifier>((ref) {
  return HomeNotifierImpl();
});
