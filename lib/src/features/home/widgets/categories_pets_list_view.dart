import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';
import 'package:petshare/src/core/resources/app_text_styles.dart';
import 'package:petshare/src/core/utils/network_image_wrapper.dart';
import 'package:petshare/src/features/home/models/pet_model.dart';

class CategoriesPetsListView extends StatelessWidget {
  const CategoriesPetsListView({
    required this.pets,
    super.key,
  });

  final List<PetModel> pets;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 224,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => _PetCardMini(pet: pets[index]),
          separatorBuilder: (_, __) => const SizedBox(width: 20),
          itemCount: pets.length,
        ),
      ),
    );
  }
}

class _PetCardMini extends StatelessWidget {
  const _PetCardMini({required this.pet});

  final PetModel pet;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context).width / 2 - 25;
    return Container(
      width: size,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: NetworkImageWrapper(
              pet.imageURL,
              width: size - 20,
              height: size - 50,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pet.name,
                    style: AppTextStyles.size20SemiBoldBlack,
                  ),
                  Text(
                    pet.breed,
                    style: AppTextStyles.size14MediumDarkGrey,
                  ),
                ],
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
        ],
      ),
    );
  }
}
