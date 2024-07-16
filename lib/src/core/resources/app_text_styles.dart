import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';

sealed class AppTextStyles {
  static const double _size12 = 12;
  static const double _size24 = 24;

  static const FontWeight _medium = FontWeight.w500;

  static const TextStyle size24MediumWhite = TextStyle(
    fontSize: _size24,
    color: AppColors.white,
    fontWeight: _medium,
  );
  static const TextStyle size12MediumDarkGrey = TextStyle(
    fontSize: _size12,
    color: AppColors.darkGrey,
    fontWeight: _medium,
  );
  static const TextStyle size12MediumAccent = TextStyle(
    fontSize: _size12,
    color: AppColors.accent,
    fontWeight: _medium,
  );
}
