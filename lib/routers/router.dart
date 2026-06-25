import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:rokas_tool_kit/presentation/pages/home/home_page.dart';
import 'package:rokas_tool_kit/presentation/pages/kcal/kcal_main_page.dart';

GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'kcalMain',
          builder: (BuildContext context, GoRouterState state) {
            return const KcalMainPage();
          },
        ),
      ],
    ),
  ],
);
