import 'package:flutter/material.dart';
import 'package:petshare/src/core/widgets/backgrounds/app_default_background.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppDefaultBackground(
      child: Text('Sign Up'),
    );
  }
}
