import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_tool_kit/presentation/pages/home/home_notifier.dart';
import 'package:rokas_tool_kit/presentation/providers/page_provider.dart';
import 'package:rokas_tool_kit/presentation/widgets/app_bar.dart';

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
