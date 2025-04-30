import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_template/views/counter_view.dart';
import 'package:riverpod_template/views/splash_view.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: '/counter-view',
      builder: (BuildContext context, GoRouterState state) {
        return CounterView();
      },
    ),
  ],
);
