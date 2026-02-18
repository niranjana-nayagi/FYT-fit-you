// ...existing code...
import 'package:flutter/material.dart';
import 'package:my_flutter_app/design/app_spacing.dart';
import 'package:my_flutter_app/design/app_typography.dart';
import 'package:my_flutter_app/widgets/fyt_card.dart';
import 'package:my_flutter_app/design/responsive.dart';
import 'package:my_flutter_app/routing/app_router.dart';

class OccasionSelectionScreen extends StatelessWidget {
  const OccasionSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final occasions = [
      'College',
      'Office',
      'Wedding',
      'Casual',
      'Date',
      'Presentation',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Occasion Mode')),
      body: SafeArea(
        child: Padding(
          padding: AppSpacing.screenPadding,
          child: GridView.count(
            crossAxisCount:
                Responsive.sizeOf(context) == DeviceSize.tablet ? 3 : 2,
            crossAxisSpacing: AppSpacing.md,
            mainAxisSpacing: AppSpacing.md,
            children: occasions
                .map((o) => FytCard(
                      onTap: () => Navigator.pushNamed(
                        context,
                        AppRoutes.moodConfidence,
                      ),
                      child: Center(
                        child: Text(
                          o,
                          style: AppTypography.subheading(context),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
// ...existing code...