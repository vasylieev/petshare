import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';
import 'package:petshare/src/core/widgets/backgrounds/app_default_background.dart';
import 'package:petshare/src/core/widgets/slivers/sliver_sized_box.dart';
import 'package:petshare/src/features/favorites/widgets/favorites_resources.dart';
import 'package:petshare/src/features/home/models/pet_model.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

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
        slivers: [
          SliverSizedBox(height: 30),
          FavoritesText(),
          SliverSizedBox(height: 10),
          _FavoritesPetsListView(),
        ],
      ),
    );
  }
}

class _FavoritesPetsListView extends StatelessWidget {
  const _FavoritesPetsListView();

  @override
  Widget build(BuildContext context) {
    return FavoritesPostsListView(
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
