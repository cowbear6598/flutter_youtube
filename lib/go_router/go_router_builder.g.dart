// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'go_router_builder.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homepageScreenRoute,
    ];

RouteBase get $homepageScreenRoute => GoRouteData.$route(
      path: '/',
      factory: $HomepageScreenRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'extension',
          factory: $ExtensionScreenRouteExtension._fromState,
        ),
      ],
    );

extension $HomepageScreenRouteExtension on HomepageScreenRoute {
  static HomepageScreenRoute _fromState(GoRouterState state) =>
      HomepageScreenRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ExtensionScreenRouteExtension on ExtensionScreenRoute {
  static ExtensionScreenRoute _fromState(GoRouterState state) =>
      ExtensionScreenRoute(
        number: int.parse(state.uri.queryParameters['number']!),
        number2: int.parse(state.uri.queryParameters['number2']!),
        number3: int.parse(state.uri.queryParameters['number3']!),
        $extra: state.extra as User,
      );

  String get location => GoRouteData.$location(
        '/extension',
        queryParams: {
          'number': number.toString(),
          'number2': number2.toString(),
          'number3': number3.toString(),
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}
