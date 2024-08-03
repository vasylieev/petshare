import 'package:flutter/material.dart';
import 'package:petshare/src/core/widgets/dropdowns/app_dropdown_button.dart';

class BreedDropdown extends StatelessWidget {
  const BreedDropdown({
    required this.onChanged,
    required this.items,
    super.key,
  });

  final void Function(String) onChanged;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: AppDropdownButton(
        dropdownItemsWidth: 200,
        label: 'Breed',
        items: items,
        onChanged: onChanged,
      ),
    );
  }
}
