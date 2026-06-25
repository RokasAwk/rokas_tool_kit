import 'package:flutter/material.dart';

import 'app_colors.dart';

var appTheme = ThemeData(
  useMaterial3: false,
  scaffoldBackgroundColor: AppColors.secondaryColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.primaryColor,
    centerTitle: false,
    titleSpacing: 24,
  ),
  primaryColor: AppColors.primaryColor,
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: AppColors.primaryColor,
  ),
  scrollbarTheme: ScrollbarThemeData(
    radius: const Radius.circular(10),
    thickness: MaterialStateProperty.all(4),
    trackVisibility: MaterialStateProperty.all(false),
    thumbVisibility: MaterialStateProperty.all(true),
    thumbColor: MaterialStateProperty.all(AppColors.primaryColor),
  ),
);
