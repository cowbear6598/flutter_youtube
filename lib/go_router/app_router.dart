import 'package:flutter/material.dart';
import 'package:flutter_youtube/extensions/schemas/user.dart';
import 'package:flutter_youtube/main.dart';
import 'package:flutter_youtube/screens/extension_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  redirect: (context, state) {
    print(state.fullPath);
    print(state.matchedLocation);

    return null;
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyHomePage(title: "Homepage"),
    ),
    GoRoute(
      path: '/extension/:number3',
      name: 'extension',
      pageBuilder: (context, state) {
        User user = state.extra! as User;

        return CustomTransitionPage<void>(
          transitionDuration: const Duration(milliseconds: 100),
          reverseTransitionDuration: const Duration(milliseconds: 500),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          child: ExtensionScreen(
            number: int.parse(state.uri.queryParameters['number']!),
            number2: int.parse(state.uri.queryParameters['number2']!),
            number3: int.parse(state.pathParameters['number3']!),
            user: user,
          ),
        );
      },
    ),
  ],
);
