import 'package:evently_app/UI/start_screen/screen/start_screen.dart';
import 'package:evently_app/core/app_assets/app_color.dart';
import 'package:evently_app/core/app_assets/app_theme.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: AppStyle.lightTheme,
        darkTheme: AppStyle.darkTheme,
        themeMode:ThemeMode.light,
      initialRoute:StartScreen.routeName ,
      routes: {
        StartScreen.routeName : (_) => StartScreen(),
      }
    );
  }
}
