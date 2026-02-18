import 'package:flutter/material.dart';
import '../../design/app_spacing.dart';
import '../../design/app_typography.dart';
import '../../widgets/fyt_text_field.dart';
import '../../widgets/fyt_button.dart';
import '../../routing/app_router.dart';

class ProfileSetupScreen extends StatelessWidget {
  const ProfileSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final styleOptions = ['Minimal', 'Classic', 'Bold'];
    String? selectedStyle;
    String? climateRegion;

    // For brevity, using StatelessWidget; in real code use Stateful or state mgmt.

    return Scaffold(
      appBar: AppBar(title: const Text('Profile Setup')),
      body: SafeArea(
        child: Padding(
          padding: AppSpacing.screenPadding,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 640),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Tell FYT about you',
                    style: AppTypography.heading(context)),
                const SizedBox(height: AppSpacing.xl),
                const FytTextField(label: 'Name'),
                const SizedBox(height: AppSpacing.lg),
                Text('Style preference',
                    style: AppTypography.label(context)),
                const SizedBox(height: AppSpacing.sm),
                Wrap(
                  spacing: AppSpacing.sm,
                  children: styleOptions
                      .map(
                        (s) => ChoiceChip(
                          label: Text(s),
                          selected: selectedStyle == s,
                          onSelected: (_) {},
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: AppSpacing.lg),
                Text('Climate region',
                    style: AppTypography.label(context)),
                const SizedBox(height: AppSpacing.sm),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(),
                  value: climateRegion,
                  items: const [
                    DropdownMenuItem(
                        value: 'Temperate',
                        child: Text('Temperate')),
                    DropdownMenuItem(
                        value: 'Tropical',
                        child: Text('Tropical')),
                    DropdownMenuItem(
                        value: 'Dry',
                        child: Text('Dry')),
                    DropdownMenuItem(
                        value: 'Cold',
                        child: Text('Cold')),
                  ],
                  onChanged: (_) {},
                ),
                const Spacer(),
                FytButton(
                  label: 'Continue',
                  onPressed: () =>
                      Navigator.pushReplacementNamed(
                    context,
                    AppRoutes.home,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}