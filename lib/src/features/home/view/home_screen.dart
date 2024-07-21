import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:petshare/src/core/app_routes.dart';
import 'package:petshare/src/core/resources/app_colors.dart';
import 'package:petshare/src/core/widgets/backgrounds/app_default_background.dart';
import 'package:petshare/src/core/widgets/slivers/sliver_sized_box.dart';
import 'package:petshare/src/features/home/models/pet_model.dart';
import 'package:petshare/src/features/home/widgets/home_resources.dart';
import 'package:petshare/src/features/home/widgets/newest_pets_list_view.dart';

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
      padding: false,
      floatingActionButton: _AddPetButton(),
      child: CustomScrollView(
        slivers: [
          SliverSizedBox(height: 30),
          _SearchPetsTextField(),
          SliverSizedBox(height: 25),
          CategoriesText(),
          SliverSizedBox(height: 10),
          _PetsCategories(),
          SliverSizedBox(height: 20),
          _CategoriesPetsListView(),
          SliverSizedBox(height: 30),
          NewestPetsText(),
          SliverSizedBox(height: 10),
          _NewestPetsListView(),
          SliverSizedBox(height: 20),
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
      onPressed: () => context.push(AppPages.toAddPetScreen),
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

class _CategoriesPetsListView extends StatelessWidget {
  const _CategoriesPetsListView();

  @override
  Widget build(BuildContext context) {
    return CategoriesPetsListView(
      pets: [
        PetModel(
          name: 'Sam',
          years: 3,
          imageURL:
              'https://cdn.britannica.com/79/232779-050-6B0411D7/German-Shepherd-dog-Alsatian.jpg',
          breed: 'Spaniel',
        ),
        PetModel(
          name: 'Sam',
          years: 3,
          imageURL:
              'https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*',
          breed: 'Spaniel',
        ),
        PetModel(
          name: 'Sam',
          years: 3,
          imageURL:
              'https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*',
          breed: 'Spaniel',
        ),
      ],
    );
  }
}

class _NewestPetsListView extends StatelessWidget {
  const _NewestPetsListView();

  @override
  Widget build(BuildContext context) {
    return NewestPetsListView(
      pets: [
        PetModel(
          name: 'Sam',
          years: 3,
          imageURL:
              'https://cdn.britannica.com/79/232779-050-6B0411D7/German-Shepherd-dog-Alsatian.jpg',
          breed: 'Spaniel',
        ),
        PetModel(
          name: 'Sam',
          years: 3,
          imageURL:
              'https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*',
          breed: 'Spaniel',
        ),
        PetModel(
          name: 'Sam',
          years: 3,
          imageURL:
              'https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*',
          breed: 'Spaniel',
        ),
      ],
    );
  }
}
