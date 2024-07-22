import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/resources.dart';
import 'package:petshare/src/core/utils/network_image_wrapper.dart';
import 'package:petshare/src/features/home/models/pet_model.dart';

class PetCard extends StatelessWidget {
  const PetCard({
    required this.pet,
    this.padding = 0,
    super.key,
  });

  final PetModel pet;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: EdgeInsets.symmetric(horizontal: padding),
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
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
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
