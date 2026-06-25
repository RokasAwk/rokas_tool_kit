import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rokas_tool_kit/presentation/pages/kcal/kcal_main_notifier.dart';
import 'package:rokas_tool_kit/presentation/pages/kcal/kcal_main_state.dart';
import 'package:rokas_tool_kit/presentation/providers/page_provider.dart';
import 'package:rokas_tool_kit/presentation/widgets/app_bar.dart';
import 'package:rokas_tool_kit/theme/app_colors.dart';

class KcalMainPage extends ConsumerStatefulWidget {
  const KcalMainPage({super.key});

  @override
  ConsumerState<KcalMainPage> createState() => _KcalMainPageState();
}

class _KcalMainPageState extends ConsumerState<KcalMainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    KcalMainState state = ref.watch(kcalMainStateNotifierProvider);
    KcalMainNotifier notifier = ref.read(
      kcalMainStateNotifierProvider.notifier,
    );

    return SafeArea(
      child: Scaffold(
        appBar: GlobalAppBar(title: 'Kcal'),
        body: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              totalKcal(context, state),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 8,
                children: [
                  functionButton(
                    title: '新增',
                    onTap: notifier.onTapAdd,
                    icon: FontAwesomeIcons.plus,
                  ),
                  functionButton(
                    title: '編輯',
                    onTap: notifier.onTapEdit,
                    icon: FontAwesomeIcons.pencil,
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: state.foodList.length,
                  itemBuilder: (context, index) {
                    return Container();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container functionButton({
    required String title,
    required Function() onTap,
    required FaIconData icon,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.thirdColor),
        borderRadius: BorderRadius.circular(16),
        color: AppColors.thirdColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        spacing: 4,
        children: [
          Text(title, style: TextStyle(fontSize: 16)),
          FaIcon(icon, size: 12),
        ],
      ),
    );
  }

  Container totalKcal(BuildContext context, KcalMainState state) {
    return Container(
      padding: EdgeInsets.only(top: 8),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: AppColors.functionGroupBgColor),
      child: Column(
        children: [
          Text('總消耗', style: TextStyle(fontSize: 24)),
          Text(
            '${state.totalKcal} Kcal',
            style: TextStyle(
              fontSize: 50,
              decoration: TextDecoration.combine([TextDecoration.underline]),
              decorationThickness: 1,
              decorationStyle: TextDecorationStyle.dashed,
              decorationColor: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
