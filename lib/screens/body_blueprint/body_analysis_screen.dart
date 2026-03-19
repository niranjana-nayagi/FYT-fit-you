import 'package:flutter/material.dart';
import 'package:my_flutter_app/design/app_spacing.dart';
import 'package:my_flutter_app/design/app_typography.dart';
import 'package:my_flutter_app/features/body_metrics/models/body_measurement_input.dart';
import 'package:my_flutter_app/features/body_metrics/services/body_metric_analyzer.dart';
import 'package:my_flutter_app/routing/app_router.dart';

class BodyAnalysisScreen extends StatefulWidget {
  const BodyAnalysisScreen({super.key});

  @override
  State<BodyAnalysisScreen> createState() => _BodyAnalysisScreenState();
}

class _BodyAnalysisScreenState extends State<BodyAnalysisScreen> {
  final _analyzer = const BodyMetricAnalyzer();
  bool _started = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_started) {
      return;
    }
    _started = true;

    final args = ModalRoute.of(context)?.settings.arguments;
    final input = args is BodyMeasurementInput
        ? args
        : const BodyMeasurementInput(
            heightCm: 170,
            weightKg: 68,
            shoulderCm: 42,
            chestCm: 92,
            waistCm: 78,
            hipCm: 94,
            inseamCm: 79,
          );

    final result = _analyzer.analyze(input);

    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushReplacementNamed(
          context,
          AppRoutes.bodyResult,
          arguments: result,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: AppSpacing.screenPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(height: AppSpacing.lg),
                Text('Analyzing proportions...',
                    style: AppTypography.subheading(context)),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  'FYT is processing shoulder, waist, hip, and leg proportions to build your body metric profile.',
                  style: AppTypography.body(context),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
