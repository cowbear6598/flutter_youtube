import 'package:flutter/material.dart';
import 'package:flutter_youtube/types/user.dart';
import 'package:flutter_youtube/screens/extension/extension_screen.dart';
import 'package:go_router/go_router.dart';

class ExtensionScreenRoute extends GoRouteData {
  ExtensionScreenRoute({
    required this.number,
    required this.number2,
    required this.number3,
    required this.$extra,
  });

  final int number;
  final int number2;
  final int number3;
  final User $extra;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      key: state.pageKey,
      transitionDuration: const Duration(milliseconds: 100),
      reverseTransitionDuration: const Duration(milliseconds: 500),
      child: ExtensionScreen(
        number: number,
        number2: number2,
        number3: number3,
        user: $extra,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }
}
