import 'package:evently_app/core/app_assets/app_assets.dart';
import 'package:flutter/material.dart';

class Introdactions extends StatelessWidget {
  const Introdactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(AppAssets.introImage),
      ),
    );
  }
}
