import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_text_styles.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({
    required this.onTap,
    super.key,
  });

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'Don\'t have an account? ',
            style: AppTextStyles.size14MediumDarkGrey,
          ),
          TextSpan(
            text: 'Sign Up',
            style: AppTextStyles.size14BoldAccent,
            recognizer: TapGestureRecognizer()..onTap = onTap,
          )
        ],
      ),
    );
  }
}
