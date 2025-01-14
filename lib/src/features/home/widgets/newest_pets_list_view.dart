import 'package:flutter/material.dart';
import 'package:petshare/src/features/home/models/pet_model.dart';
import 'package:petshare/src/features/home/widgets/pet_card.dart';

class NewestPetsListView extends StatelessWidget {
  const NewestPetsListView({
    required this.pets,
    super.key,
  });

  final List<PetModel> pets;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (_, index) => PetCard(
        pet: pets[index],
        padding: 15,
      ),
      separatorBuilder: (_, __) => const SizedBox(height: 20),
      itemCount: pets.length,
    );
  }
}
