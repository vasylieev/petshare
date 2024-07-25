import 'package:flutter/material.dart';
import 'package:petshare/src/core/widgets/text_fields/app_text_field.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    required this.onChanged,
    super.key,
  });

  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      label: 'Email',
      onChanged: onChanged,
      hintText: 'example@gmail.com',
    );
  }
}
