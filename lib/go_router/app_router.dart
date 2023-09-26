import 'package:flutter_youtube/extensions/schemas/user.dart';
import 'package:flutter_youtube/main.dart';
import 'package:flutter_youtube/screens/extension_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyHomePage(title: "Homepage"),
    ),
    GoRoute(
      path: '/extension',
      name: 'extension',
      builder: (context, state) {
        User user = state.extra! as User;

        return ExtensionScreen(
          number: int.parse(state.uri.queryParameters['number']!),
          number2: int.parse(state.uri.queryParameters['number2']!),
          user: user,
        );
      },
    ),
  ],
);
