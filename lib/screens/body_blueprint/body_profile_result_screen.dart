// ...existing code...
import 'package:flutter/material.dart';
import 'package:my_flutter_app/design/app_spacing.dart';
import 'package:my_flutter_app/design/app_typography.dart';
import 'package:my_flutter_app/widgets/fyt_button.dart';
import 'package:my_flutter_app/routing/app_router.dart';

class BodyProfileResultScreen extends StatelessWidget {
  const BodyProfileResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Example static data.
    return Scaffold(
      appBar: AppBar(title: const Text('Your Body Blueprint')),
      body: SafeArea(
        child: Padding(
          padding: AppSpacing.screenPadding,
          child: ListView(
            children: [
              Text('Body Type: Soft Rectangle',
                  style: AppTypography.subheading(context)),
              const SizedBox(height: AppSpacing.sm),
              Text(
                'Proportion summary',
                style: AppTypography.label(context),
              ),
              const SizedBox(height: AppSpacing.xs),
              Text(
                'Balanced shoulders and hips with a gentle waistline. Legs slightly longer than torso.',
                style: AppTypography.body(context),
              ),
              const SizedBox(height: AppSpacing.lg),
              Text(
                'Styling suggestions',
                style: AppTypography.label(context),
              ),
              const SizedBox(height: AppSpacing.sm),
              _bullet(context, 'Softly structured jackets that define the waist.'),
              _bullet(context, 'Mid-rise bottoms that keep balance between torso and legs.'),
              _bullet(context, 'Monochrome outfits to elongate your frame.'),
              const SizedBox(height: AppSpacing.xl),
              Row(
                children: [
                  Expanded(
                    child: FytButton(
                      label: 'Back to Home',
                      onPressed: () => Navigator.popUntil(
                        context,
                        ModalRoute.withName(AppRoutes.home),
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: FytButton(
                      label: 'Save',
                      primary: false,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bullet(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('•  '),
          Expanded(child: Text(text, style: AppTypography.body(context))),
        ],
      ),
    );
  }
}
// ...existing code...