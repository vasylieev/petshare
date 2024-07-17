import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';

sealed class AppTextStyles {
  static const double _size10 = 10;
  static const double _size12 = 12;
  static const double _size14 = 14;
  static const double _size24 = 24;

  static const FontWeight _medium = FontWeight.w500;
  static const FontWeight _semiBold = FontWeight.w600;

  static const TextStyle size24MediumWhite = TextStyle(
    fontSize: _size24,
    color: AppColors.white,
    fontWeight: _medium,
  );
  static const TextStyle size12SemiBoldGrey = TextStyle(
    fontSize: _size12,
    color: AppColors.grey,
    fontWeight: _semiBold,
  );
  static const TextStyle size14MediumGrey = TextStyle(
    fontSize: _size14,
    color: AppColors.grey,
    fontWeight: _medium,
  );
  static const TextStyle size14MediumDarkGrey = TextStyle(
    fontSize: _size14,
    color: AppColors.darkGrey,
    fontWeight: _medium,
  );
  static const TextStyle size12MediumAccent = TextStyle(
    fontSize: _size12,
    color: AppColors.accent,
    fontWeight: _medium,
  );
  static const TextStyle size10SemiBoldAccent = TextStyle(
    fontSize: _size10,
    color: AppColors.accent,
    fontWeight: _semiBold,
  );
}
