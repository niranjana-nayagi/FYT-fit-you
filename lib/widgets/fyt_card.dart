import 'package:flutter/material.dart';
import '../design/app_colors.dart';
import '../design/app_shadows.dart';
import '../design/app_spacing.dart';

class FytCard extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;

  const FytCard({super.key, required this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    final card = Container(
      decoration: BoxDecoration(
        color: AppColors.bgSecondary,
        borderRadius:
            BorderRadius.circular(AppSpacing.cornerRadiusCard),
        boxShadow: AppShadows.softCard,
      ),
      padding: const EdgeInsets.all(AppSpacing.md),
      child: child,
    );
    if (onTap == null) return card;
    return InkWell(
      borderRadius:
          BorderRadius.circular(AppSpacing.cornerRadiusCard),
      onTap: onTap,
      child: card,
    );
  }
}