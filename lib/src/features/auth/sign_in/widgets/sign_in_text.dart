import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_text_styles.dart';

class SignInText extends StatelessWidget {
  const SignInText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Text(
        'Sign In to your account',
        style: AppTextStyles.size24SemiBoldBlack,
      ),
    );
  }
}
