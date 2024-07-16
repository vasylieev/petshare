import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.icon, {
    this.color = AppColors.black,
    super.key,
  });

  final String icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      icon,
      color: color,
      scale: 2,
    );
  }
}
