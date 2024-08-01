import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';
import 'package:petshare/src/core/resources/app_text_styles.dart';

class AppDropdownButton extends StatefulWidget {
  const AppDropdownButton({
    required this.items,
    required this.onChanged,
    super.key,
  });

  final List<String> items;
  final void Function(String) onChanged;

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
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
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
              color: AppColors.lightGrey
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
            width: 120,
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
    );
  }
}
