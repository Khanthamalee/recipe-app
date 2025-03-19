import 'package:flutter/material.dart';
import 'package:recipeapp/core/configs/theme/app_colors.dart';

class AppTheme {
  static final apptheme = ThemeData(
      primaryColor: AppColors.secondary,
      scaffoldBackgroundColor: AppColors.primary,
      brightness: Brightness.dark,
      snackBarTheme: SnackBarThemeData(
          backgroundColor: AppColors.secondary,
          contentTextStyle: TextStyle(color: AppColors.thirdary)),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.secondary,
        hintStyle:
            TextStyle(color: AppColors.thirdary, fontWeight: FontWeight.w400),
        contentPadding: EdgeInsets.all(16),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide.none),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide.none),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.forthdary,
              elevation: 0,
              textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)))));
}
