import 'package:flutter/services.dart';
import 'package:rokas_tool_kit/routers/router.dart';

abstract class HomeNotifier {
  HomeNotifier();

  void onTapKcalMain();
  void onTapDrink();
  void onTapFoodBar();
  void onTapNote();
  void onTapMore();
}

class HomeNotifierImpl extends HomeNotifier {
  HomeNotifierImpl() : super();

  @override
  void onTapKcalMain() {
    appRouter.push('/kcalMain');
  }

  @override
  void onTapDrink() {
    // TODO: implement onTapDrink
  }

  @override
  void onTapFoodBar() {
    // TODO: implement onTapFoodBar
  }

  @override
  void onTapMore() {
    // TODO: implement onTapMore
  }

  @override
  void onTapNote() {
    // TODO: implement onTapNote
  }
}
