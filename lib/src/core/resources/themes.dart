import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';

sealed class AppThemes {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: AppColors.white,
  );
}