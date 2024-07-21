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
    this.backgroundColor = AppColors.inputGrey,
    this.border = false,
    this.borderRadius = 14,
    super.key,
  });

  final String? label;
  final String? hintText;
  final String? prefixIcon;
  final void Function(String) onChanged;
  final void Function()? onTap;
  final Color backgroundColor;
  final bool border;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (label != null) ...[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              label!,
              style: AppTextStyles.size12MediumBlack,
            ),
          ),
          const SizedBox(height: 3),
        ],
        GestureDetector(
          onTap: onTap,
          child: TextField(
            style: AppTextStyles.size14MediumBlack,
            onChanged: onChanged,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: AppTextStyles.size14MediumDarkGrey,
              filled: true,
              fillColor: backgroundColor,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 16,
              ),
              prefixIcon: prefixIcon != null
                  ? AppIcon(
                      prefixIcon!,
                      color: AppColors.darkGrey,
                    )
                  : null,
              enabledBorder: OutlineInputBorder(
                borderSide: border ? const BorderSide(color: AppColors.inputGrey) : BorderSide.none,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: border ? const BorderSide(color: AppColors.accent, width: 2) : BorderSide.none,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
