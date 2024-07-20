import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';
import 'package:petshare/src/core/resources/app_text_styles.dart';
import 'package:petshare/src/core/utils/network_image_wrapper.dart';
import 'package:petshare/src/features/home/models/pet_model.dart';

class NewestPetsListView extends StatelessWidget {
  const NewestPetsListView({
    required this.pets,
    super.key,
  });

  final List<PetModel> pets;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (_, index) => _PetCard(pet: pets[index]),
      separatorBuilder: (_, __) => const SizedBox(height: 20),
      itemCount: pets.length,
    );
  }
}

class _PetCard extends StatelessWidget {
  const _PetCard({required this.pet});

  final PetModel pet;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.02),
            blurRadius: 8,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: NetworkImageWrapper(
              pet.imageURL,
              width: 144,
              height: 144,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              Text(
                pet.name,
                style: AppTextStyles.size20SemiBoldBlack,
              ),
              Text(
                pet.breed,
                style: AppTextStyles.size14MediumDarkGrey,
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.lightAccent,
                ),
                child: Text(
                  '${pet.years} YRS',
                  style: AppTextStyles.size12SemiBoldAccent,
                ),
              )
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.inputGrey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
