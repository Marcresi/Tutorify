import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tutorify/homepage.dart';
import 'package:tutorify/secondpage.dart';
import 'package:tutorify/lessons.dart';
import 'package:tutorify/errorpage.dart';

// import 'welcome_page.dart';
int flag = 0;

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
      routes: <GoRoute>[
        GoRoute(
          path: 'SecondPage',
          pageBuilder: (BuildContext context, GoRouterState state) =>
              MaterialPage(
            child: SecondPage(),
          ),
        ),
        GoRoute(
          path: 'LessonPage',
          pageBuilder: (BuildContext context, GoRouterState state) =>
              MaterialPage(
            child: LessonPage(),
          ),
        ),
      ],
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: ErrorPage(exception: state.error),
  ),
);
