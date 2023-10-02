import 'package:flutter/material.dart';
import 'package:flutter_youtube/go_router/app_router.dart';
import 'package:flutter_youtube/go_router/go_router_builder.dart';
import 'package:go_router/go_router.dart';

class RouteObserverScreen extends StatefulWidget {
  const RouteObserverScreen({super.key});

  @override
  State<RouteObserverScreen> createState() => _RouteObserverScreenState();
}

class _RouteObserverScreenState extends State<RouteObserverScreen> with RouteAware {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      routeObserver.subscribe(this, ModalRoute.of(context)!);
    });
  }

  @override
  void didPush() {
    print('didPush');
  }

  @override
  void didPushNext() {
    print('didPushNext');
  }

  @override
  void didPop() {
    print('didPop');
  }

  @override
  void didPopNext() {
    print('didPopNext');
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
          children: [
            Text('Route Observer Screen'),
            ElevatedButton(
              onPressed: () => HomepageScreenRoute().push(context),
              child: const Text("Homepage Screen"),
            )
          ],
        ),
      )
    );
  }
}
