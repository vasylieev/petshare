import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.icon, {
    this.color = AppColors.black,
    this.height = 26,
    this.scale = 2,
    super.key,
  });

  final String icon;
  final Color color;
  final double height;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      icon,
      color: color,
      height: height,
      scale: scale,
    );
  }
}
