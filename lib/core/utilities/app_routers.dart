import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: kInitialRoute,
        builder: (BuildContext context, GoRouterState state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeRoute,
        builder: (BuildContext context, GoRouterState state) => const HomeView(),
      ),
    ],
  );
}
