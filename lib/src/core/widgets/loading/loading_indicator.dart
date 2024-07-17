import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:petshare/src/core/resources/app_colors.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    this.color = AppColors.accent,
    this.size = 20,
    super.key,
  });

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.fourRotatingDots(
        color: color,
        size: size,
      ),
    );
  }
}
