import 'package:flutter/material.dart';
import '../../design/app_spacing.dart';
import '../../design/app_typography.dart';
import '../../design/app_colors.dart';
import '../../design/responsive.dart';
import '../../widgets/fyt_card.dart';
import '../../routing/app_router.dart';

class SmartClosetDashboardScreen extends StatelessWidget {
  const SmartClosetDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final filters = ['All', 'Most Used', 'Underused'];
    final items = List.generate(12, (i) => 'Item ${i + 1}');

    return Scaffold(
      appBar: AppBar(title: const Text('Smart Closet')),
      body: SafeArea(
        child: Padding(
          padding: AppSpacing.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: AppSpacing.sm,
                children: filters
                    .map((f) => ChoiceChip(
                          label: Text(f),
                          selected: f == 'All',
                          onSelected: (_) {},
                        ))
                    .toList(),
              ),
              const SizedBox(height: AppSpacing.lg),
              Expanded(
                child: GridView.count(
                  crossAxisCount:
                      Responsive.sizeOf(context) == DeviceSize.tablet
                          ? 3
                          : 2,
                  crossAxisSpacing: AppSpacing.md,
                  mainAxisSpacing: AppSpacing.md,
                  children: items
                      .map(
                        (i) => FytCard(
                          child: Column(
                            mainAxisAlignment:
                                MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 64,
                                width: 64,
                                decoration: BoxDecoration(
                                  color: AppColors.bgPrimary,
                                  borderRadius:
                                      BorderRadius.circular(12),
                                ),
                              ),
                              const SizedBox(
                                  height: AppSpacing.sm),
                              Text(i,
                                  style: AppTypography.body(context)),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.accentLavender,
        onPressed: () => Navigator.pushNamed(
          context,
          AppRoutes.addWardrobeItem,
        ),
        child: const Icon(Icons.add_rounded,
            color: AppColors.textPrimary),
      ),
    );
  }
}