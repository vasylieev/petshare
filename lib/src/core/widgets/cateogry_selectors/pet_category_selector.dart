import 'package:flutter/material.dart';
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
    this.border = true,
    this.allOption = true,
    super.key,
  });

  final void Function(PetCategory) onSelected;
  final bool border;
  final bool allOption;

  @override
  State<PetCategorySelector> createState() => _PetCategorySelectorState();
}

class _PetCategorySelectorState extends State<PetCategorySelector> {
  int _selectedIndex = 0;

  @override
  void initState() {
    setState(() {
      _selectedIndex = widget.allOption ? 0 : 1;
    });
    super.initState();
  }

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
          const SizedBox(height: 3),
          SizedBox(
            height: 46,
            child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                final startingIndex = widget.allOption ? -1 : 0;
                final keys = _categories.keys.toList();
                if (index > startingIndex) {
                  return _CategoryCard(
                    category: keys[index],
                    selected: _selectedIndex == index,
                    border: widget.border,
                    margin: index != keys.length - 1,
                    onSelected: (category) {
                      widget.onSelected(category);
                      setState(() {
                        _selectedIndex =
                            _categories.keys.toList().indexOf(category);
                      });
                    },
                  );
                } else {
                  return const SizedBox();
                }
              },
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
    required this.margin,
    this.border = true,
  });

  final PetCategory category;
  final void Function(PetCategory) onSelected;
  final bool selected;
  final bool border;
  final bool margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelected(category),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        margin: EdgeInsets.only(right: margin ? 10 : 0),
        decoration: BoxDecoration(
          color: selected ? AppColors.accent : AppColors.white,
          border: border ? Border.all(color: AppColors.inputGrey) : null,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            if (!border) BoxShadow(
              color: AppColors.black.withOpacity(0.02),
              blurRadius: 4,
              offset: const Offset(0, 3),
            )
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
