import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utilities/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      GoRoute(
        path: kBookDetailsViewRoute,
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImplementation>()),
          child: BookDetailsView(bookModel: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: kSearchViewRoute,
        builder: (BuildContext context, GoRouterState state) => const SearchView(),
      ),
    ],
  );
}
