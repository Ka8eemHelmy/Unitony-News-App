import 'package:flutter/material.dart';
import '../app_colors.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
  ),
  useMaterial3: true,
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: AppColors.primaryColor,
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: AppColors.primaryColor,
        width: 1,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: AppColors.primaryColor,
        width: 2,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: AppColors.red,
        width: 1,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: AppColors.red,
        width: 2,
      ),
    ),
    labelStyle: const TextStyle(
      color: AppColors.accentColor,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    hintStyle: const TextStyle(
      color: AppColors.accentColor,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    errorStyle: const TextStyle(
      color: AppColors.red,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: AppColors.grey,
        width: 1,
      ),
    ),
    floatingLabelStyle: const TextStyle(
      color: AppColors.accentColor,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    helperStyle: const TextStyle(
      color: AppColors.accentColor,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    iconColor: AppColors.accentColor,
    activeIndicatorBorder: const BorderSide(
      color: AppColors.primaryColor,
      width: 1,
    ),
    counterStyle: const TextStyle(
      color: AppColors.accentColor,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
  ),
);
