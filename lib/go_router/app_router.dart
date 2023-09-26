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
      builder: (context, state) => const ExtensionScreen(),
    ),
  ],
);