import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';

sealed class AppTextStyles {
  static const String _poppins = 'Poppins';

  static const double _size14 = 14;

  static const FontWeight _medium = FontWeight.w500;

  static const TextStyle size14MediumBlack = TextStyle(
    fontFamily: _poppins,
    fontSize: _size14,
    color: AppColors.black,
    fontWeight: _medium,
  );
}
