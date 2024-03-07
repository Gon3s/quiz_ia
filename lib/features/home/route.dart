import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/presentation/transitions/fade_transition.dart';
import 'presentation/home_screen.dart';
import 'presentation/quiz_result_screen.dart';
import 'presentation/quiz_screen.dart';

final RouteBase homeRoutes = GoRoute(
  name: 'home',
  path: '/',
  pageBuilder: (BuildContext context, GoRouterState state) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: const HomeScreen(),
      transitionDuration: const Duration(milliseconds: 150),
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        return fadeTransitionBuilder(context, animation, secondaryAnimation, child);
      },
    );
  },
  routes: [
    GoRoute(
      name: 'quiz',
      path: 'quiz',
      pageBuilder: (context, state) {
        final pseudo = state.uri.queryParameters['pseudo'].toString();
        final level = state.uri.queryParameters['level'].toString();
        final theme = state.uri.queryParameters['theme'].toString();

        return CustomTransitionPage<void>(
          key: state.pageKey,
          child: QuizScreen(
            pseudo: pseudo,
            level: level,
            theme: theme,
          ),
          transitionDuration: const Duration(milliseconds: 150),
          transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
            return fadeTransitionBuilder(context, animation, secondaryAnimation, child);
          },
        );
      },
    ),
    GoRoute(
      name: 'quizResult',
      path: 'quizResult',
      pageBuilder: (context, state) {
        final pseudo = state.uri.queryParameters['pseudo'].toString();
        final level = state.uri.queryParameters['level'].toString();
        final theme = state.uri.queryParameters['theme'].toString();

        return CustomTransitionPage<void>(
          key: state.pageKey,
          child: QuizResultScreen(
            pseudo: pseudo,
            level: level,
            theme: theme,
          ),
          transitionDuration: const Duration(milliseconds: 150),
          transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
            return fadeTransitionBuilder(context, animation, secondaryAnimation, child);
          },
        );
      },
    ),
  ],
);
