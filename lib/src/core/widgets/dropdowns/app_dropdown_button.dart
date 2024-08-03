import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';
import 'package:petshare/src/core/resources/app_text_styles.dart';

class AppDropdownButton extends StatefulWidget {
  const AppDropdownButton({
    required this.items,
    required this.onChanged,
    this.label,
    this.dropdownItemsWidth = 120,
    super.key,
  });

  final List<String> items;
  final void Function(String) onChanged;
  final String? label;
  final double dropdownItemsWidth;

  @override
  State<AppDropdownButton> createState() => _AppDropdownButtonState();
}

class _AppDropdownButtonState extends State<AppDropdownButton> {
  String _selectedValue = '';

  @override
  void initState() {
    if (widget.items.isNotEmpty) {
      setState(() {
        _selectedValue = widget.items.first;
      });
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant AppDropdownButton oldWidget) {
    setState(() {
      _selectedValue = widget.items.first;
    });
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.label != null) ...[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.label!,
              style: AppTextStyles.size12MediumBlack,
            ),
          ),
          const SizedBox(height: 3),
        ],
        SizedBox(
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              hint: Text(
                _selectedValue,
                style: AppTextStyles.size14MediumBlack,
                overflow: TextOverflow.ellipsis,
              ),
              items: widget.items
                  .map(
                    (String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: AppTextStyles.size14MediumBlack,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                  .toList(),
              value: _selectedValue,
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    _selectedValue = value;
                    widget.onChanged(_selectedValue);
                  });
                }
              },
              buttonStyleData: ButtonStyleData(
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.inputGrey),
                  color: AppColors.white
                ),
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                ),
                iconEnabledColor: AppColors.darkGrey,
                iconDisabledColor: AppColors.grey,
              ),
              dropdownStyleData: DropdownStyleData(
                elevation: 3,
                width: widget.dropdownItemsWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.white,
                ),
                offset: const Offset(0, -10),
                scrollbarTheme: ScrollbarThemeData(
                  radius: const Radius.circular(40),
                  thickness: MaterialStateProperty.all(6),
                  thumbVisibility: MaterialStateProperty.all(true),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 40,
                padding: EdgeInsets.only(left: 16, right: 16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
