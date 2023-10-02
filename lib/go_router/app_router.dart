import 'package:flutter/material.dart';
import 'package:flutter_youtube/go_router/go_router_builder.dart';
import 'package:go_router/go_router.dart';

final routeObserver = RouteObserver();

final router = GoRouter(
  redirect: (context, state) {
    print("uri: ${state.uri}");
    print("uri's path: ${state.uri.path}");
    print("matched: ${state.matchedLocation}");
    print("full: ${state.fullPath}");

    return null;
  },
  routes: $appRoutes,
  observers: [routeObserver],
);
