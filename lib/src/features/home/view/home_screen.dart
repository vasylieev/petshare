import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';
import 'package:petshare/src/core/widgets/paddings/app_default_background.dart';
import 'package:petshare/src/features/home/widgets/home_resources.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _View();
  }
}

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    return AppDefaultBackground(
      backgroundColor: AppColors.lightGrey,
      floatingActionButton: _AddPetButton(),
      child: CustomScrollView(
        slivers: [],
      ),
    );
  }
}

class _AddPetButton extends StatelessWidget {
  const _AddPetButton();

  @override
  Widget build(BuildContext context) {
    return AddPetButton(onPressed: () {});
  }
}

