import 'package:flutter/material.dart';
import 'package:petshare/src/core/widgets/text_fields/app_text_field.dart';

class PetNameTextField extends StatelessWidget {
  const PetNameTextField({
    required this.onChanged,
    super.key,
  });

  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: AppTextField(
        hintText: 'Write a name here...',
        onChanged: onChanged,
        label: 'Pet\'s Name',
      ),
    );
  }
}
