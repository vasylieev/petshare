import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';

sealed class AppTextStyles {
  static const String _poppins = 'Poppins';

  static const double _size24 = 24;

  static const FontWeight _medium = FontWeight.w500;

  static const TextStyle size24MediumWhite = TextStyle(
    fontFamily: _poppins,
    fontSize: _size24,
    color: AppColors.white,
    fontWeight: _medium,
  );
}
