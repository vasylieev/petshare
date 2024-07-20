import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_text_styles.dart';

class NewestPetsText extends StatelessWidget {
  const NewestPetsText({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Newest Pets',
          style: AppTextStyles.size24SemiBoldBlack,
        ),
      ),
    );
  }
}
