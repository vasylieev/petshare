import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_text_styles.dart';
import 'package:petshare/src/core/widgets/dropdowns/app_dropdown_button.dart';
import 'package:petshare/src/core/widgets/text_fields/app_text_field.dart';

class AgeSelector extends StatelessWidget {
  const AgeSelector({super.key});

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
          Row(
            children: [
              Expanded(
                child: AppTextField(onChanged: (value) {  },),
              ),
              const SizedBox(width: 15),
              Expanded(
                flex: 2,
                child: AppDropdownButton(
                  items: const ['Days', 'Months', 'Years'],
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
