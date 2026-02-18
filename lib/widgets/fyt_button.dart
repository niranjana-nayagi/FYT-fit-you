import 'package:flutter/material.dart';
import '../design/app_typography.dart';

class FytButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool primary;

  const FytButton({
    super.key,
    required this.label,
    this.onPressed,
    this.primary = true,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTypography.button(context);
    if (primary) {
      return ElevatedButton(
        onPressed: onPressed,
        child: Text(label, style: textStyle),
      );
    }
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
      ),
      child: Text(label, style: textStyle),
    );
  }
}