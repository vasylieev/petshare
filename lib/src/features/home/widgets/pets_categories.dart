import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';
import 'package:petshare/src/core/resources/app_icons.dart';
import 'package:petshare/src/core/resources/app_text_styles.dart';
import 'package:petshare/src/core/utils/app_icon.dart';

class PetsCategories extends StatelessWidget {
  const PetsCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 44,
        child: ListView.separated(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: index == 0 ? AppColors.accent : AppColors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withOpacity(0.02),
                    blurRadius: 4,
                    offset: const Offset(0, 3)
                  )
                ]
              ),
              child: Row(
                children: [
                  AppIcon(
                    AppIcons.cat,
                    color: index == 0 ? AppColors.white : AppColors.grey,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Dogs',
                    style: index == 0 ? AppTextStyles.size14SemiBoldWhite : AppTextStyles.size14SemiBoldGrey,
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (_, __) => const SizedBox(width: 12),
          itemCount: 5,
        ),
      ),
    );
  }
}
