// ...existing code...
import 'package:flutter/material.dart';
import '../../widgets/fyt_button.dart';
import '../../design/app_colors.dart';
import '../../design/app_spacing.dart';
import '../../design/app_typography.dart';
import '../../routing/app_router.dart';

class OutfitRecommendationScreen extends StatelessWidget {
  const OutfitRecommendationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Today’s Look')),
      body: SafeArea(
        child: Padding(
          padding: AppSpacing.screenPadding,
          child: ListView(
            children: [
              Container(
                height: 260,
                decoration: BoxDecoration(
                  color: AppColors.bgSecondary,
                  borderRadius:
                      BorderRadius.circular(AppSpacing.cornerRadiusCard),
                ),
                child: const Center(
                  child: Icon(
                    Icons.checkroom_rounded,
                    size: 96,
                    color: AppColors.textSub,
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              Text('Why it works', style: AppTypography.subheading(context)),
              const SizedBox(height: AppSpacing.sm),
              _bullet(context,
                  'Balances your shoulder and hip line with a structured top.'),
              _bullet(context,
                  'Uses monochrome tones to elongate your frame.'),
              _bullet(context,
                  'Keeps comfort high while looking polished.'),
              const SizedBox(height: AppSpacing.lg),
              Row(
                children: [
                  const _ScoreBadge(
                    label: 'Suitability',
                    value: '92%',
                    color: AppColors.successSoft,
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  _ScoreBadge(
                    label: 'Confidence',
                    value: '88%',
                    color: AppColors.accentLavender.withOpacity(0.3),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.xl),
              FytButton(
                label: 'Ask Stylist',
                onPressed: () => Navigator.pushNamed(context, AppRoutes.aiChat),
              ),
              const SizedBox(height: AppSpacing.sm),
              FytButton(
                label: 'Try Alternative',
                primary: false,
                onPressed: () {},
              ),
              const SizedBox(height: AppSpacing.sm),
              FytButton(
                label: 'Save',
                primary: false,
                onPressed: () {},
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

class _ScoreBadge extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const _ScoreBadge({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.sm,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            Text(label, style: AppTypography.label(context)),
            const SizedBox(height: 4),
            Text(value, style: AppTypography.subheading(context)),
          ],
        ),
      ),
    );
  }
}
// ...existing code...