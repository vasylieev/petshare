import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_text_styles.dart';

class CategoriesText extends StatelessWidget {
  const CategoriesText({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Categories',
          style: AppTextStyles.size24SemiBoldBlack,
        ),
      ),
    );
  }
}
