import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';
import 'package:petshare/src/core/widgets/paddings/app_default_background.dart';
import 'package:petshare/src/core/widgets/slivers/sliver_sized_box.dart';
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
    return const AppDefaultBackground(
      backgroundColor: AppColors.lightGrey,
      floatingActionButton: _AddPetButton(),
      child: CustomScrollView(
        slivers: [
          SliverSizedBox(height: 30),
          _SearchPetsTextField(),
          SliverSizedBox(height: 20),
          CategoriesText(),
          SliverSizedBox(height: 10),
          _PetsCategories(),
        ],
      ),
    );
  }
}

class _AddPetButton extends StatelessWidget {
  const _AddPetButton();

  @override
  Widget build(BuildContext context) {
    return AddPetButton(
      onPressed: () {},
    );
  }
}

class _SearchPetsTextField extends StatelessWidget {
  const _SearchPetsTextField();

  @override
  Widget build(BuildContext context) {
    return SearchPetsTextField(
      onTap: () {},
    );
  }
}

class _PetsCategories extends StatelessWidget {
  const _PetsCategories();

  @override
  Widget build(BuildContext context) {
    return PetsCategories();
  }
}
