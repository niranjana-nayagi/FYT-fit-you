// ...existing code...
import 'package:flutter/material.dart';
import 'package:my_flutter_app/design/app_spacing.dart';
import 'package:my_flutter_app/design/app_typography.dart';

class MoodConfidenceScreen extends StatefulWidget {
  const MoodConfidenceScreen({super.key});

  @override
  State<MoodConfidenceScreen> createState() => _MoodConfidenceScreenState();
}

class _MoodConfidenceScreenState extends State<MoodConfidenceScreen> {
  final TextEditingController _controller = TextEditingController();
  String? _submittedText;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSubmit() {
    setState(() {
      _submittedText = _controller.text.trim();
    });
    FocusScope.of(context).unfocus();
  }

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
              const SizedBox(height: 8),
              Text(
                'Any other specifications?',
                style: AppTypography.heading(context),
              ),
              const SizedBox(height: AppSpacing.md),
              TextField(
                controller: _controller,
                textInputAction: TextInputAction.done,
                onSubmitted: (_) => _onSubmit(),
                decoration: InputDecoration(
                  hintText: 'e.g. prefer bright colors, no prints, formal',
                  border: const OutlineInputBorder(),
                ),
                minLines: 1,
                maxLines: 4,
              ),
              const SizedBox(height: AppSpacing.md),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: _onSubmit,
                  child: const Text('Submit'),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              if (_submittedText != null && _submittedText!.isNotEmpty)
                Center(
                  child: Text(
                    'Cool, let us style you',
                    style: AppTypography.heading(context),
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
