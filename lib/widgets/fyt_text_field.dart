import 'package:flutter/material.dart';
import '../design/app_typography.dart';

class FytTextField extends StatelessWidget {
  final String label;
  final bool obscure;
  final TextInputType? keyboardType;

  const FytTextField({
    super.key,
    required this.label,
    this.obscure = false,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTypography.label(context)),
        const SizedBox(height: 8),
        TextField(
          keyboardType: keyboardType,
          obscureText: obscure,
        ),
      ],
    );
  }
}