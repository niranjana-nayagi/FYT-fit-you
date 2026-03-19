import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTypography {
  static TextStyle heading(BuildContext context) {
    final scale = MediaQuery.of(context).size.width / 390; // iPhone 15 ref
    final fontSize = 24 * scale.clamp(0.9, 1.2);
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.2,
      color: AppColors.textPrimary,
    );
  }

  static TextStyle subheading(BuildContext context) {
    final scale = MediaQuery.of(context).size.width / 390;
    final fontSize = 18 * scale.clamp(0.9, 1.15);
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: AppColors.textPrimary,
    );
  }

  static TextStyle body(BuildContext context) {
    final scale = MediaQuery.of(context).size.width / 390;
    final fontSize = 14 * scale.clamp(0.9, 1.1);
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w300,
      height: 1.5,
      color: AppColors.textSub,
    );
  }

  static TextStyle label(BuildContext context) {
    final scale = MediaQuery.of(context).size.width / 390;
    final fontSize = 13 * scale.clamp(0.9, 1.1);
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      color: AppColors.textSub,
    );
  }

  static TextStyle button(BuildContext context) {
    final scale = MediaQuery.of(context).size.width / 390;
    final fontSize = 15 * scale.clamp(0.9, 1.1);
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.3,
      color: AppColors.textPrimary,
    );
  }
}