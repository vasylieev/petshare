import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';
import 'package:petshare/src/core/widgets/text_fields/app_text_field.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    required this.onChanged,
    super.key,
  });

  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      label: 'Password',
      onChanged: onChanged,
      hintText: '******',
      backgroundColor: AppColors.white,
      border: true,
      borderRadius: 12,
    );
  }
}
