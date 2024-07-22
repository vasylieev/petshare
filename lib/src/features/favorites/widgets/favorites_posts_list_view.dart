import 'package:flutter/material.dart';
import 'package:petshare/src/features/home/models/pet_model.dart';
import 'package:petshare/src/features/home/widgets/pet_card.dart';

class FavoritesPostsListView extends StatelessWidget {
  const FavoritesPostsListView({required this.pets, super.key});

  final List<PetModel> pets;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: pets.length,
      itemBuilder: (_, index) => PetCard(pet: pets[index]),
      separatorBuilder: (_, __) => const SizedBox(height: 20),
    );
  }
}