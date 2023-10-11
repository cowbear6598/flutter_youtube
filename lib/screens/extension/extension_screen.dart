import 'package:flutter/material.dart';
import 'package:flutter_youtube/components/app_bar/common_app_bar.dart';
import 'package:flutter_youtube/extensions/int_extensions.dart';
import 'package:flutter_youtube/go_router/go_router_builder.dart';
import 'package:flutter_youtube/types/user.dart';
import 'package:flutter_youtube/extensions/user_extensions.dart';

class ExtensionScreen extends StatefulWidget {
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
  State<ExtensionScreen> createState() => _ExtensionScreenState();
}

class _ExtensionScreenState extends State<ExtensionScreen> {
  @override
  void initState() {
    super.initState();

    print("initState - ExtensionScreen");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose - ExtensionScreen");
  }

  @override
  Widget build(BuildContext context) {
    print("build - ExtensionScreen");

    return Scaffold(
      appBar: commonAppBar(context, "Extension Screen"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("int: ${widget.number}"),
            Text("toHour: ${widget.number.toHour()}"),
            Text("int: ${widget.number2}"),
            Text("toHour: ${widget.number2.toHour()}"),
            Text("int: ${widget.number3}"),
            Text("toHour: ${widget.number3.toHour()}"),
            Text("user: ${widget.user.last_login_time}"),
            Text("toDateTime: ${widget.user.lastLoginTime}"),
            ElevatedButton(
              onPressed: () => HomepageScreenRoute().push(context),
              child: const Text("Homepage"),
            )
          ],
        ),
      ),
    );
  }
}
