import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';
import 'package:petshare/src/core/resources/app_icons.dart';
import 'package:petshare/src/core/utils/app_icon.dart';

class AddPetButton extends StatelessWidget {
  const AddPetButton({
    required this.onPressed,
    super.key,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: AppColors.accent,
      elevation: 0,
      child: const AppIcon(
        AppIcons.plus,
        color: AppColors.white,
      ),
    );
  }
}
