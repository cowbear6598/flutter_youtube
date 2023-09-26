import 'package:flutter/material.dart';
import 'package:flutter_youtube/extensions/int_extensions.dart';
import 'package:go_router/go_router.dart';

class ExtensionScreen extends StatelessWidget {
  const ExtensionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int a = 90;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Extension Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text("int: $a"),
            Text("toHour: ${a.toHour()}"),
          ],
        ),
      ),
    );
  }
}
