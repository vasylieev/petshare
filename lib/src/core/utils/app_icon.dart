import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(this.icon, {super.key});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      icon,
      scale: 2,
    );
  }
}
