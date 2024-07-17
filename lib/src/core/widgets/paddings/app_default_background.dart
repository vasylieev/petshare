import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';

class AppDefaultBackground extends StatelessWidget {
  const AppDefaultBackground({
    required this.child,
    this.backgroundColor = AppColors.white,
    this.appBar,
    this.floatingActionButton,
    this.padding = true,
    super.key,
  });

  final Widget child;
  final PreferredSizeWidget? appBar;
  final Color backgroundColor;
  final Widget? floatingActionButton;
  final bool padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      floatingActionButton: floatingActionButton,
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding ? 15 : 0),
          child: child,
        ),
      ),
    );
  }
}
