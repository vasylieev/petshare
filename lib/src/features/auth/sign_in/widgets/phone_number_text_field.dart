import 'package:flutter/material.dart';
import 'package:petshare/src/core/widgets/text_fields/app_text_field.dart';

class PhoneNumberTextField extends StatelessWidget {
  const PhoneNumberTextField({
    required this.onChanged,
    super.key,
  });

  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      label: 'Phone Number',
      onChanged: onChanged,
      hintText: 'Phone Number',
      borderRadius: 12,
    );
  }
}
