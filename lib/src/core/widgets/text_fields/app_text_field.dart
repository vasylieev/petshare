import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';
import 'package:petshare/src/core/resources/app_text_styles.dart';
import 'package:petshare/src/core/utils/app_icon.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.onChanged,
    this.onTap,
    this.label,
    this.hintText,
    this.prefixIcon,
    super.key,
  });

  final String? label;
  final String? hintText;
  final String? prefixIcon;
  final void Function(String) onChanged;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TextField(
        style: AppTextStyles.size16MediumBlack,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextStyles.size16MediumDarkGrey,
          filled: true,
          fillColor: AppColors.inputGrey,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
          prefixIcon: prefixIcon != null ? AppIcon(
            prefixIcon!,
            color: AppColors.darkGrey,
          ) : null,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}
