import 'package:flutter/material.dart';
import 'package:petshare/src/core/app_routes.dart';
import 'package:petshare/src/core/resources/app_themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.router,
      theme: AppThemes.lightTheme,
    );
  }
}