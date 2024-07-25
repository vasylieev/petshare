import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:petshare/src/core/resources/app_colors.dart';
import 'package:petshare/src/core/resources/app_icons.dart';
import 'package:petshare/src/core/resources/app_text_styles.dart';
import 'package:petshare/src/core/utils/app_icon.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({
    required this.title,
    this.actionTitle,
    this.onActionPressed,
    super.key,
  });

  final String title;
  final String? actionTitle;
  final void Function()? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        border: Border(
          bottom: BorderSide(color: AppColors.inputGrey)
        )
      ),
      width: MediaQuery.sizeOf(context).width,
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => context.pop(),
              child: const AppIcon(AppIcons.chevronLeft),
            ),
            Text(
              title,
              style: AppTextStyles.size16MediumBlack,
            ),
            if (actionTitle != null) GestureDetector(
              onTap: onActionPressed,
              child: Text(
                actionTitle!,
                style: AppTextStyles.size16SemiBoldAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
