import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_tool_kit/presentation/pages/kcal/kcal_main_notifier.dart';
import 'package:rokas_tool_kit/presentation/providers/page_provider.dart';
import 'package:rokas_tool_kit/presentation/widgets/app_bar.dart';

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
    KcalMainNotifier notifier = ref.read(
      kcalMainStateNotifierProvider.notifier,
    );

    return SafeArea(
      child: Scaffold(
        appBar: GlobalAppBar(title: 'Kcal'),
        body: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(top: 32),
          child: Column(children: [
         
            ],
          ),
        ),
      ),
    );
  }
}
