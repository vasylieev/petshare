import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';
import 'package:petshare/src/core/widgets/backgrounds/app_default_background.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _View();
  }
}

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    return const AppDefaultBackground(
      backgroundColor: AppColors.lightGrey,
      child: CustomScrollView(
        slivers: [],
      ),
    );
  }
}