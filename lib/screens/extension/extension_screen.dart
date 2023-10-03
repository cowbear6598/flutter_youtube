import 'package:flutter/material.dart';
import 'package:flutter_youtube/extensions/int_extensions.dart';
import 'package:flutter_youtube/types/user.dart';
import 'package:flutter_youtube/extensions/user_extensions.dart';
import 'package:go_router/go_router.dart';

class ExtensionScreen extends StatelessWidget {
  const ExtensionScreen({
    super.key,
    required this.number,
    required this.number2,
    required this.number3,
    required this.user,
  });

  final int number;
  final int number2;
  final int number3;
  final User user;

  @override
  Widget build(BuildContext context) {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("int: $number"),
            Text("toHour: ${number.toHour()}"),
            Text("int: $number2"),
            Text("toHour: ${number2.toHour()}"),
            Text("int: $number3"),
            Text("toHour: ${number3.toHour()}"),
            Text("user: ${user.last_login_time}"),
            Text("toDateTime: ${user.lastLoginTime}"),
          ],
        ),
      ),
    );
  }
}
