import 'package:flutter/material.dart';
import 'package:flutter_youtube/extensions/schemas/user.dart';
import 'package:flutter_youtube/go_router/extension_screen_route.dart';
import 'package:flutter_youtube/screens/homepage_screen.dart';
import 'package:go_router/go_router.dart';

part 'go_router_builder.g.dart';

@TypedGoRoute<HomepageScreenRoute>(
  path: '/',
  routes: [
    TypedGoRoute<ExtensionScreenRoute>(
      path: 'extension',
    )
  ],
)
class HomepageScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomepageScreen();
  }
}
