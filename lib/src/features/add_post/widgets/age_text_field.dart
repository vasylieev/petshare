import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_text_styles.dart';
import 'package:petshare/src/core/widgets/dropdowns/app_dropdown_button.dart';
import 'package:petshare/src/core/widgets/text_fields/app_text_field.dart';

class AgeTextField extends StatelessWidget {
  const AgeTextField({
    required this.onChanged,
    required this.onLabelChanged,
    super.key,
  });

  final void Function(String) onChanged;
  final void Function(String) onLabelChanged;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Age',
              style: AppTextStyles.size12MediumBlack,
            ),
          ),
          const SizedBox(height: 3),
          Row(
            children: [
              Expanded(
                child: AppTextField(
                  hintText: '0',
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                flex: 2,
                child: AppDropdownButton(
                  items: const ['Days', 'Months', 'Years'],
                  onChanged: onLabelChanged,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
