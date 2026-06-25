import 'package:flutter/material.dart';
import 'package:rokas_tool_kit/routers/router.dart';
import 'package:rokas_tool_kit/theme/app_colors.dart';

class GlobalAppBar extends AppBar {
  GlobalAppBar({super.key, bool showBack = true, String? title})
    : super(
        title: Text(
          title ?? '工具箱',
          style: TextStyle(
            color: AppColors.appBarTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        titleSpacing: showBack ? 0 : null,
        leading: showBack ? _LeadingWidget(showBack: showBack) : null,
      );
}

class _LeadingWidget extends StatelessWidget {
  const _LeadingWidget({required this.showBack});
  final bool showBack;
  @override
  Widget build(BuildContext context) {
    if (!showBack) {
      return Builder(builder: (context) => const SizedBox.shrink());
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: appRouter.pop,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: Icon(Icons.chevron_left),
        ),
      ],
    );
  }
}
