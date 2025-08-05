import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:flutter/material.dart';

// theme management for light mode 

class Apptheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldLightColor,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonLightColor,
      ),
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(color: AppColors.textLightColor),
      bodyLarge: TextStyle(color: AppColors.textLightColor),
    ),
  );

// theme management for dark mode 

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldDarkColor,
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonDarkColor,
      ),
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(color: AppColors.textDarkColor),
      bodyLarge: TextStyle(color: AppColors.textDarkColor),
    ),
  );
}
