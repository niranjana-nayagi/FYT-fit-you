// ...existing code...
import 'package:flutter/material.dart';
import 'package:my_flutter_app/design/app_spacing.dart';
import 'package:my_flutter_app/design/app_typography.dart';
import 'package:my_flutter_app/design/app_colors.dart';
import 'package:my_flutter_app/widgets/fyt_button.dart';
import 'package:my_flutter_app/routing/app_router.dart';

class OnboardingOccasionScreen extends StatelessWidget {
  const OnboardingOccasionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: AppSpacing.screenPadding,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 480),
              child: Column(
                children: [
                  const Spacer(),
                  Container(
                    height: 220,
                    decoration: BoxDecoration(
                      color: AppColors.bgSecondary,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Icon(
                      Icons.event_note_rounded,
                      size: 80,
                      color: AppColors.textSub,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  Text('Dress for Every Occasion',
                      style: AppTypography.heading(context),
                      textAlign: TextAlign.center),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    'Context-aware recommendations that adapt to your calendar, culture, and climate.',
                    style: AppTypography.body(context),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  FytButton(
                    label: 'Next',
                    onPressed: () => Navigator.pushNamed(
                      context,
                      AppRoutes.onboarding3,
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
// ...existing code...