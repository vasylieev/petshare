import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';

class AppDefaultBackground extends StatelessWidget {
  const AppDefaultBackground({
    required this.child,
    this.backgroundColor = AppColors.white,
    this.floatingActionButton,
    super.key,
  });

  final Widget child;
  final Color backgroundColor;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingActionButton,
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: child,
        ),
      ),
    );
  }
}
