import 'package:chatogram/theme/colors.dart';
import 'package:chatogram/theme/fonts.dart';
import 'package:chatogram/theme/size.dart';
import 'package:flutter/material.dart';

class ChatogramTheme {
  static final chatogramLightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.whiteColor,
    textTheme: TextThemes.chatogramTextTheme,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      elevation: 0,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.blackColor,
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primaryColor,
      onPrimary: AppColors.whiteColor,
      secondary: AppColors.grey,
      onSecondary: AppColors.blackColor,
      error: AppColors.red,
      onError: AppColors.whiteColor,
      background: AppColors.grey100,
      onBackground: AppColors.blackColor,
      surface: AppColors.whiteColor,
      onSurface: AppColors.blackColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.whiteColor,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.p16),
        borderSide: const BorderSide(
          color: AppColors.primaryColor,
          width: AppSizes.p2,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.p16),
        borderSide: const BorderSide(
          color: AppColors.grey200,
          width: AppSizes.p2,
        ),
      ),
      focusColor: AppColors.grey200,
    ),
  );
}