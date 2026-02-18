import 'package:flutter/material.dart';
import '../../design/app_spacing.dart';
import '../../design/app_typography.dart';
import '../../design/app_colors.dart';
import '../../routing/app_router.dart';
import '../../widgets/fyt_button.dart';

class OnboardingScanScreen extends StatelessWidget {
  const OnboardingScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: AppSpacing.screenPadding,
            child: ConstrainedBox(
              constraints:
                  const BoxConstraints(maxWidth: 480),
              child: Column(
                children: [
                  const Spacer(),
                  Container(
                    height: 220,
                    decoration: BoxDecoration(
                      color: AppColors.bgSecondary,
                      borderRadius:
                          BorderRadius.circular(24),
                    ),
                    child: const Icon(
                      Icons.person_search_rounded,
                      size: 80,
                      color: AppColors.textSub,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  Text('Scan Your Structure',
                      style: AppTypography.heading(context),
                      textAlign: TextAlign.center),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    'Understand your body proportions using AI. FYT creates a subtle blueprint, never sharing raw images.',
                    style: AppTypography.body(context),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  FytButton(
                    label: 'Next',
                    onPressed: () => Navigator.pushNamed(
                      context,
                      AppRoutes.onboarding2,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}