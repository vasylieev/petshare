import 'dart:io';

import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/resources.dart';
import 'package:petshare/src/core/utils/app_icon.dart';

class PhotosListView extends StatelessWidget {
  const PhotosListView({
    required this.photos,
    super.key,
  });

  final List<File> photos;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Photos',
              style: AppTextStyles.size12MediumBlack,
            ),
          ),
          const SizedBox(height: 3),
          SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                if (index == 0) return const _AddPhotoButton();
              },
              separatorBuilder: (_, __) => const SizedBox(width: 10),
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}

class _AddPhotoButton extends StatelessWidget {
  const _AddPhotoButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: AppColors.lightGrey, borderRadius: BorderRadius.circular(16)),
      child: const Center(
        child: AppIcon(
          AppIcons.plus,
          color: AppColors.darkGrey,
        ),
      ),
    );
  }
}
