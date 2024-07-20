import 'package:flutter/material.dart';
import 'package:petshare/src/core/widgets/backgrounds/app_default_background.dart';
import 'package:petshare/src/features/auth/sign_in/widgets/sign_in_resources.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _View();
  }
}

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    return const AppDefaultBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SignInText(),
          SizedBox(height: 40),
          _PhoneNumberTextField(),
          SizedBox(height: 15),
          _PhoneNumberTextField(),
          SizedBox(height: 40),
          _SignInButton(),
        ],
      ),
    );
  }
}

class _PhoneNumberTextField extends StatelessWidget {
  const _PhoneNumberTextField();

  @override
  Widget build(BuildContext context) {
    return PhoneNumberTextField(
      onChanged: (value) {},
    );
  }
}

class _SignInButton extends StatelessWidget {
  const _SignInButton();

  @override
  Widget build(BuildContext context) {
    return SignInButton(
      onPressed: () {},
    );
  }
}
