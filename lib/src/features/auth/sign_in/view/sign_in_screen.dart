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
        children: [
          Spacer(),
          SignInText(),
          SizedBox(height: 40),
          _EmailTextField(),
          SizedBox(height: 15),
          _PasswordTextField(),
          SizedBox(height: 20),
          _ForgotPasswordText(),
          SizedBox(height: 20),
          _SignInButton(),
          SizedBox(height: 20),
          _SignUpText(),
          Spacer(),
        ],
      ),
    );
  }
}

class _EmailTextField extends StatelessWidget {
  const _EmailTextField();

  @override
  Widget build(BuildContext context) {
    return EmailTextField(
      onChanged: (value) {},
    );
  }
}

class _PasswordTextField extends StatelessWidget {
  const _PasswordTextField();

  @override
  Widget build(BuildContext context) {
    return PasswordTextField(
      onChanged: (value) {},
    );
  }
}

class _ForgotPasswordText extends StatelessWidget {
  const _ForgotPasswordText();

  @override
  Widget build(BuildContext context) {
    return ForgotPasswordText(
      onTap: () {},
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

class _SignUpText extends StatelessWidget {
  const _SignUpText();

  @override
  Widget build(BuildContext context) {
    return SignUpText(
      onTap: () {},
    );
  }
}
