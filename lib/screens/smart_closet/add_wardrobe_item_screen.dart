import 'package:flutter/material.dart';
import 'package:my_flutter_app/design/app_spacing.dart';
import 'package:my_flutter_app/design/app_typography.dart';
import 'package:my_flutter_app/design/app_colors.dart';
import 'package:my_flutter_app/widgets/fyt_button.dart';

class AddWardrobeItemScreen extends StatelessWidget {
  const AddWardrobeItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Item')),
      body: SafeArea(
        child: Padding(
          padding: AppSpacing.screenPadding,
          child: ListView(
            children: [
              Container(
                height: 160,
                decoration: BoxDecoration(
                  color: AppColors.bgSecondary,
                  borderRadius: BorderRadius.circular(AppSpacing.cornerRadiusCard),
                  border: Border.all(color: AppColors.borderSoft),
                ),
                child: Center(
                  child: Text(
                    'Tap to upload',
                    style: AppTypography.body(context),
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              _dropdown(context, 'Category', ['Top', 'Bottom', 'Dress']),
              const SizedBox(height: AppSpacing.md),
              _dropdown(context, 'Color', ['Black', 'Navy', 'Beige']),
              const SizedBox(height: AppSpacing.md),
              _dropdown(context, 'Fabric', ['Cotton', 'Linen', 'Wool']),
              const SizedBox(height: AppSpacing.md),
              _dropdown(context, 'Formality', ['Casual', 'Smart', 'Formal']),
              const SizedBox(height: AppSpacing.xl),
              FytButton(label: 'Save', onPressed: () => Navigator.pop(context)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dropdown(BuildContext context, String label, List<String> options) {
    String? value;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTypography.label(context)),
        const SizedBox(height: AppSpacing.xs),
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(),
          value: value,
          items: options
              .map((o) => DropdownMenuItem(value: o, child: Text(o)))
              .toList(),
          onChanged: (_) {},
        ),
      ],
    );
  }
}