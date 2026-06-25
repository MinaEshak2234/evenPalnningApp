import 'package:evently_app/core/app_assets/app_assets.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  static  const String routeName = "LetsGoScreen";

  const splashScreen ({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Image.asset(
              AppAssets.evenlyLogo, width: 200, height: 200,)));
  }
}
