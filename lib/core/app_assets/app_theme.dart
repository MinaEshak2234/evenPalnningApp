import 'package:flutter/material.dart';
import 'app_color.dart';

class AppStyle {
  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        color: AppColors.purple,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
      labelLarge: TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w500
      )

    ),

    fontFamily: "Inter",
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
    ),
    colorScheme: ColorScheme.light(
      primary: AppColors.purple,
      secondary: AppColors.black,
      tertiary: AppColors.red,
      onPrimaryContainer: AppColors.white
    ),
  );

  static ThemeData darkTheme = ThemeData(
    textTheme: TextTheme(
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
      ),
      labelLarge: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w500
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        color: AppColors.purple,
      ),

    ),

    fontFamily: "Inter",
    scaffoldBackgroundColor: AppColors.darkPurple,
    colorScheme: ColorScheme.dark(
      primary: AppColors.purple,
      secondary: AppColors.white,
      tertiary: AppColors.red,
        onPrimaryContainer: AppColors.black
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
    ),
  );
}
