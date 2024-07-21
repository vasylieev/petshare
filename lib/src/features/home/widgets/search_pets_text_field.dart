import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_icons.dart';
import 'package:petshare/src/core/widgets/text_fields/app_text_field.dart';

class SearchPetsTextField extends StatelessWidget {
  const SearchPetsTextField({
    required this.onTap,
    super.key,
  });

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: AppTextField(
          onChanged: (value) {},
          onTap: onTap,
          hintText: 'Search for pets',
          prefixIcon: AppIcons.search,
        ),
      ),
    );
  }
}
