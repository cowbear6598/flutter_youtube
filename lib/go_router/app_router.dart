import 'package:flutter_youtube/go_router/go_router_builder.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  redirect: (context, state) {
    print(state.fullPath);
    print(state.matchedLocation);

    return null;
  },
  routes: $appRoutes,
);
