import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_text_styles.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({
    required this.onTap,
    super.key,
  });

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Forgot Password?',
      style: AppTextStyles.size12MediumBlackUnderline,
    );
  }
}
