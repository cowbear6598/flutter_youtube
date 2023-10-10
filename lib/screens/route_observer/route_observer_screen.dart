import 'package:flutter/material.dart';
import 'package:flutter_youtube/go_router/app_router.dart';
import 'package:flutter_youtube/go_router/go_router_builder.dart';
import 'package:flutter_youtube/screens/extension/extension_screen_route.dart';
import 'package:flutter_youtube/types/user.dart';
import 'package:go_router/go_router.dart';

class RouteObserverScreen extends StatefulWidget {
  const RouteObserverScreen({super.key});

  @override
  State<RouteObserverScreen> createState() => _RouteObserverScreenState();
}

class _RouteObserverScreenState extends State<RouteObserverScreen> with RouteAware {
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
  void initState() {
    super.initState();

    print("initState - RouteObserverScreen");

    WidgetsBinding.instance.addPostFrameCallback((_) {
      print("addPostFrameCallback: initState - RouteObserverScreen");
      routeObserver.subscribe(this, ModalRoute.of(context)!);
    });
  }

  @override
  void didPush() {
    print('didPush - RouteObserverScreen');
  }

  @override
  void didPushNext() {
    print('didPushNext - RouteObserverScreen');
  }

  @override
  void didPop() {
    print('didPop - RouteObserverScreen');
  }

  @override
  void didPopNext() {
    print('didPopNext - RouteObserverScreen');
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();

    print("dispose - RouteObserverScreen");
  }

  @override
  Widget build(BuildContext context) {
    print("build - RouteObserverScreen");

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Route Observer Screen'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.pop(),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Route Observer Screen'),
              ElevatedButton(
                onPressed: () => _toExtensionScreen(context),
                child: const Text("Extension Screen"),
              ),
            ],
          ),
        ));
  }
}
