// lib/app.dart
import 'package:flutter/material.dart';
import 'design/app_theme.dart';
import 'routing/app_router.dart';

class FytApp extends StatelessWidget {
  const FytApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FYT',
      debugShowCheckedModeBanner: false,
      theme: buildFytTheme(),
      initialRoute: AppRoutes.splash,
      onGenerateRoute: onGenerateRoute,
    );
  }
}