import 'package:flutter/material.dart';
import '../../design/app_colors.dart';
import '../../design/app_spacing.dart';
import '../../design/app_typography.dart';

class AiStylistChatScreen extends StatelessWidget {
  const AiStylistChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final suggestionChips = [
      'Why this color?',
      'Make it more formal.',
      'I don’t like this.',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Your AI Stylist')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: AppSpacing.screenPadding,
                children: [
                  _MessageBubble.ai(
                    context,
                    'This outfit softens your shoulders while keeping structure at the waist. The color palette stays within your preferred calm tones.',
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  _MessageBubble.user(
                    context,
                    'Can we make it slightly more formal?',
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Row(
                    children: suggestionChips
                        .map(
                          (s) => Padding(
                            padding: const EdgeInsets.only(
                                right: AppSpacing.xs),
                            child: ChoiceChip(
                              label: Text(s),
                              selected: false,
                              onSelected: (_) {},
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Row(
                    children: [
                      const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                      const SizedBox(width: 8),
                      Text('Stylist is typing…',
                          style: AppTypography.body(context)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: AppColors.bgSecondary,
              padding:
                  const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'Ask anything about your outfit…',
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send_rounded),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MessageBubble extends StatelessWidget {
  final String text;
  final bool isAi;

  const _MessageBubble._(this.text, this.isAi);

  factory _MessageBubble.ai(BuildContext context, String text) =>
      _MessageBubble._(text, true);

  factory _MessageBubble.user(BuildContext context, String text) =>
      _MessageBubble._(text, false);

  @override
  Widget build(BuildContext context) {
    final bg = isAi
        ? AppColors.bgSecondary
        : AppColors.accentLavender.withOpacity(0.35);
    final align =
        isAi ? Alignment.centerLeft : Alignment.centerRight;
    final radius = BorderRadius.circular(18);
    return Align(
      alignment: align,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.all(AppSpacing.md),
        constraints: const BoxConstraints(maxWidth: 320),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: radius,
        ),
        child: Text(text, style: AppTypography.body(context)),
      ),
    );
  }
}