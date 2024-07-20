import 'package:flutter/material.dart';
import 'package:petshare/src/core/widgets/buttons/app_primary_button.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    required this.onPressed,
    super.key,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return AppPrimaryButton(
      title: 'Sign In',
      onPressed: onPressed,
    );
  }
}
