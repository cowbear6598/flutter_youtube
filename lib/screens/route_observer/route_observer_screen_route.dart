import 'package:flutter/material.dart';
import 'package:flutter_youtube/screens/route_observer/route_observer_screen.dart';
import 'package:go_router/go_router.dart';

@override
class RouteObserverScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const RouteObserverScreen();
  }
}