import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/enums.dart';
import 'package:petshare/src/core/resources/resources.dart';
import 'package:petshare/src/core/utils/app_icon.dart';

final Map<PetCategory, String> _categories = {
  PetCategory.all: AppIcons.paw,
  PetCategory.cats: AppIcons.cat,
  PetCategory.dogs: AppIcons.dog,
  PetCategory.fish: AppIcons.fish,
  PetCategory.rabbits: AppIcons.rabbit,
  PetCategory.rats: AppIcons.rat,
  PetCategory.squirrels: AppIcons.squirrel,
  PetCategory.turtles: AppIcons.turtle,
  PetCategory.other: AppIcons.ellipsis,
};

class PetCategorySelector extends StatefulWidget {
  const PetCategorySelector({
    required this.onSelected,
    super.key,
  });

  final Function(PetCategory) onSelected;

  @override
  State<PetCategorySelector> createState() => _PetCategorySelectorState();
}

class _PetCategorySelectorState extends State<PetCategorySelector> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Category',
              style: AppTextStyles.size12MediumBlack,
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 44,
            child: ListView.separated(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return _CategoryCard(
                  category: _categories.keys.toList()[index],
                  selected: _selectedIndex == index,
                  onSelected: (category) {
                    setState(() {
                      _selectedIndex = _categories.keys.toList().indexOf(category);
                    });
                  },
                );
              },
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemCount: _categories.keys.length,
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    required this.category,
    required this.onSelected,
    required this.selected,
  });

  final PetCategory category;
  final void Function(PetCategory) onSelected;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelected(category),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: selected ? AppColors.accent : AppColors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                color: AppColors.black.withOpacity(0.02),
                blurRadius: 4,
                offset: const Offset(0, 3))
          ],
        ),
        child: Row(
          children: [
            AppIcon(
              _categories[category],
              color: selected ? AppColors.white : AppColors.grey,
            ),
            const SizedBox(width: 4),
            Text(
              category.name.capitalize(),
              style: selected
                  ? AppTextStyles.size14SemiBoldWhite
                  : AppTextStyles.size14SemiBoldGrey,
            ),
          ],
        ),
      ),
    );
  }
}
