// ...existing code...
import 'package:flutter/material.dart';
import 'package:my_flutter_app/design/app_spacing.dart';
import 'package:my_flutter_app/design/app_typography.dart';
import 'package:my_flutter_app/widgets/fyt_button.dart';
import 'package:my_flutter_app/routing/app_router.dart';

class MoodConfidenceScreen extends StatefulWidget {
  const MoodConfidenceScreen({super.key});

  @override
  State<MoodConfidenceScreen> createState() => _MoodConfidenceScreenState();
}

class _MoodConfidenceScreenState extends State<MoodConfidenceScreen> {
  double mood = 0.4;
  double confidence = 0.6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tune Your Look')),
      body: SafeArea(
        child: Padding(
          padding: AppSpacing.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Mood', style: AppTypography.label(context)),
              const SizedBox(height: AppSpacing.xs),
              Slider(
                value: mood,
                onChanged: (v) => setState(() => mood = v),
                min: 0,
                max: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Calm', style: AppTypography.body(context)),
                  Text('Bold', style: AppTypography.body(context)),
                ],
              ),
              const SizedBox(height: AppSpacing.lg),
              Text('Confidence', style: AppTypography.label(context)),
              const SizedBox(height: AppSpacing.xs),
              Slider(
                value: confidence,
                onChanged: (v) => setState(() => confidence = v),
                min: 0,
                max: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Low', style: AppTypography.body(context)),
                  Text('High', style: AppTypography.body(context)),
                ],
              ),
              const Spacer(),
              FytButton(
                label: 'Generate Outfit',
                onPressed: () => Navigator.pushNamed(
                  context,
                  AppRoutes.outfitRecommendation,
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