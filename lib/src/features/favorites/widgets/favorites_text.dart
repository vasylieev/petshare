import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_text_styles.dart';

class FavoritesText extends StatelessWidget {
  const FavoritesText({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Text(
        'Your Favorites',
        style: AppTextStyles.size24SemiBoldBlack,
      ),
    );
  }
}
