// ...existing code...
import 'package:flutter/material.dart';
import 'package:my_flutter_app/design/app_spacing.dart';
import 'package:my_flutter_app/design/app_typography.dart';
import 'package:my_flutter_app/widgets/fyt_button.dart';
import 'package:my_flutter_app/routing/app_router.dart';

class BodyBlueprintIntroScreen extends StatelessWidget {
  const BodyBlueprintIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Body Blueprint')),
      body: SafeArea(
        child: Padding(
          padding: AppSpacing.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Let’s Understand Your Structure',
                  style: AppTypography.heading(context)),
              const SizedBox(height: AppSpacing.sm),
              Text(
                'We’ll use AI to map your proportions and build a gentle, private body profile.',
                style: AppTypography.body(context),
              ),
              const Spacer(),
              FytButton(
                label: 'Start Scan',
                onPressed: () => Navigator.pushNamed(
                  context,
                  AppRoutes.bodyScan,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// ...existing code...