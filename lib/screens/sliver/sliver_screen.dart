import 'package:flutter/material.dart';
import 'package:flutter_youtube/components/app_bar/common_app_bar.dart';

class SliverScreen extends StatelessWidget {
  const SliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(context, "Sliver"),
    );
  }
}
