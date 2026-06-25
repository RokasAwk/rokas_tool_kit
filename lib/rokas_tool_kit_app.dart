import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_tool_kit/routers/router.dart';

import 'package:logging/logging.dart';
import 'package:rokas_tool_kit/theme/theme.dart';

class RokasToolKitApp extends ConsumerStatefulWidget {
  const RokasToolKitApp({super.key});

  @override
  ConsumerState<RokasToolKitApp> createState() {
    return _RokasToolKitAppState();
  }
}

class _RokasToolKitAppState extends ConsumerState<RokasToolKitApp> {
  @override
  void initState() {
    Logger.root.onRecord.listen((LogRecord rec) {
      debugPrint(
        '${rec.loggerName}>${rec.level.name}: ${rec.time}: ${rec.message}',
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Rokas ToolKit App',
      builder: (context, child) {
        return Overlay(
          initialEntries: [
            if (child != null) ...[
              OverlayEntry(
                builder: (context) {
                  return child;
                },
              ),
            ],
          ],
        );
      },
      theme: appTheme,
      routeInformationProvider: appRouter.routeInformationProvider,
      routerDelegate: appRouter.routerDelegate,
      routeInformationParser: appRouter.routeInformationParser,
    );
  }
}
