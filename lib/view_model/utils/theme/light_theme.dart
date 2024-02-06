import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app_colors.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primaryColor,
  ),
  useMaterial3: true,
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(
        color: AppColors.primaryColor,
        width: 1.w,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(
        color: AppColors.primaryColor,
        width: 1.w,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(
        color: AppColors.primaryColor,
        width: 2.w,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(
        color: AppColors.red,
        width: 1.w,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(
        color: AppColors.red,
        width: 2.w,
      ),
    ),
    labelStyle: TextStyle(
      color: AppColors.accentColor,
      fontSize: 12.sp,
      fontWeight: FontWeight.bold,
    ),
    hintStyle: TextStyle(
      color: AppColors.accentColor,
      fontSize: 12.sp,
      fontWeight: FontWeight.bold,
    ),
    errorStyle: TextStyle(
      color: AppColors.red,
      fontSize: 12.sp,
      fontWeight: FontWeight.bold,
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(
        color: AppColors.grey,
        width: 1.w,
      ),
    ),
    floatingLabelStyle: TextStyle(
      color: AppColors.accentColor,
      fontSize: 12.sp,
      fontWeight: FontWeight.bold,
    ),
    helperStyle: TextStyle(
      color: AppColors.accentColor,
      fontSize: 12.sp,
      fontWeight: FontWeight.bold,
    ),
    iconColor: AppColors.accentColor,
    activeIndicatorBorder: BorderSide(
      color: AppColors.primaryColor,
      width: 1.w,
    ),
    counterStyle: TextStyle(
      color: AppColors.accentColor,
      fontSize: 12.sp,
      fontWeight: FontWeight.bold,
    ),
  ),
);
