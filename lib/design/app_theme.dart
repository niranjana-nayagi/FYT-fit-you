import 'package:flutter/material.dart';
import 'app_colors.dart';

ThemeData buildFytTheme() {
  final base = ThemeData.light();
  return base.copyWith(
    scaffoldBackgroundColor: AppColors.bgPrimary,
    primaryColor: AppColors.accentLavender,
    colorScheme: base.colorScheme.copyWith(
      primary: AppColors.accentLavender,
      secondary: AppColors.accentLavender,
      background: AppColors.bgPrimary,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.bgPrimary,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.textPrimary),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.bgSecondary,
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: AppColors.borderSoft),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: AppColors.borderSoft),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: AppColors.accentLavender),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.accentLavender,
        foregroundColor: AppColors.textPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
        padding:
            const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      ),
    ),
  );
}