import 'package:flutter/material.dart';
import 'package:flutter_youtube/go_router/go_router_builder.dart';
import 'package:flutter_youtube/screens/route_observer/route_observer_screen_route.dart';
import 'package:flutter_youtube/types/user.dart';
import 'package:flutter_youtube/screens/extension/extension_screen_route.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  void _toExtensionScreen(BuildContext context) {
    User user = User(
      last_login_time: 1695741130,
    );

    ExtensionScreenRoute(
      number: 60,
      number2: 40,
      number3: 70,
      $extra: user,
    ).push(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Homepage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _toExtensionScreen(context),
              child: const Text("Extension Screen"),
            ),
            ElevatedButton(
              onPressed: () => RouteObserverScreenRoute().push(context),
              child: const Text("Route Observer Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
