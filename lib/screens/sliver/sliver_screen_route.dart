import 'package:flutter/material.dart';
import 'package:flutter_youtube/screens/sliver/sliver_screen.dart';
import 'package:go_router/go_router.dart';

@immutable
class SliverScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SliverScreen();
  }
}
