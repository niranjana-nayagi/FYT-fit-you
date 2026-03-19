import 'package:flutter/material.dart';
import '../../design/app_spacing.dart';
import '../../design/app_typography.dart';
import '../../widgets/fyt_text_field.dart';
import '../../widgets/fyt_button.dart';
import '../../routing/app_router.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: AppSpacing.screenPadding,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 480),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome to FYT',
                      style: AppTypography.heading(context)),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    'Style with intelligence, every day.',
                    style: AppTypography.body(context),
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  const FytTextField(
                    label: 'Email',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: AppSpacing.md),
                  const FytTextField(
                    label: 'Password',
                    obscure: true,
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  FytButton(
                    label: 'Continue',
                    onPressed: () => Navigator.pushNamed(
                      context,
                      AppRoutes.profileSetup,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  FytButton(
                    label: 'Continue with Google',
                    primary: false,
                    onPressed: () => Navigator.pushNamed(
                      context,
                      AppRoutes.profileSetup,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}