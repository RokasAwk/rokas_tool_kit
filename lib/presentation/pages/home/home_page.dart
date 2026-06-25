import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_tool_kit/assets/assets.dart';
import 'package:rokas_tool_kit/presentation/pages/home/home_notifier.dart';
import 'package:rokas_tool_kit/presentation/providers/page_provider.dart';
import 'package:rokas_tool_kit/presentation/widgets/app_bar.dart';
import 'package:rokas_tool_kit/theme/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    HomeNotifier notifier = ref.read(homeStateNotifierProvider);

    return SafeArea(
      child: Scaffold(
        appBar: GlobalAppBar(showBack: false),
        body: Stack(
          alignment: AlignmentGeometry.center,
          children: [
            // 首頁背景圖
            Image.asset(
              Assets.bg,
              opacity: const AlwaysStoppedAnimation(0.3),
              fit: BoxFit.contain,
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
              child: Column(
                spacing: 24,
                children: [
                  _userTitle(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 2,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.functionGroupBgColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 16,
                      children: [
                        _functionButton(
                          title: 'Kcal',
                          iconData: FontAwesomeIcons.fire,
                          onTap: notifier.onTapKcalMain,
                        ),
                        _functionButton(
                          title: 'Drink',
                          iconData: FontAwesomeIcons.bottleWater,
                          onTap: notifier.onTapDrink,
                        ),
                        _functionButton(
                          title: 'Food Bar',
                          iconData: FontAwesomeIcons.bowlFood,
                          onTap: notifier.onTapFoodBar,
                        ),
                        _functionButton(
                          title: 'Note',
                          iconData: FontAwesomeIcons.pencil,
                          onTap: notifier.onTapNote,
                        ),
                        _functionButton(
                          title: 'More',
                          iconData: FontAwesomeIcons.arrowRight,
                          onTap: notifier.onTapMore,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 歡迎使用者標題
  Widget _userTitle() {
    return Row(
      children: [
        Text(
          '歡迎，使用者!',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  // 首頁功能按鈕
  Widget _functionButton({
    required String title,
    required FaIconData iconData,
    required Function() onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        spacing: 8,
        children: [
          Container(
            alignment: Alignment.center,
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppColors.secondaryColor,
            ),
            child: FaIcon(iconData, size: 24),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
            child: AutoSizeText(
              title,
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
              maxLines: 1,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
