import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petshare/src/core/injection_container.dart';
import 'package:petshare/src/core/resources/enums.dart';
import 'package:petshare/src/core/widgets/app_bars/title_app_bar.dart';
import 'package:petshare/src/core/widgets/backgrounds/app_default_background.dart';
import 'package:petshare/src/core/widgets/cateogry_selectors/pet_category_selector.dart';
import 'package:petshare/src/core/widgets/slivers/sliver_sized_box.dart';
import 'package:petshare/src/features/add_post/cubit/add_post_cubit.dart';
import 'package:petshare/src/features/add_post/widgets/add_post_resources.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AddPostCubit>(),
      child: const _View(),
    );
  }
}

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    return const AppDefaultBackground(
      padding: 0,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: CustomScrollView(
              slivers: [
                SliverSizedBox(height: 70),
                _PetNameTextField(),
                SliverSizedBox(height: 10),
                _AgeSelector(),
                SliverSizedBox(height: 10),
                _PetCategorySelector(),
                SliverSizedBox(height: 15),
                _PetDescriptionTextField(),
                SliverSizedBox(height: 15),
                _PhotosListView(),
              ],
            ),
          ),
          _AppBar(),
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    return TitleAppBar(
      title: 'Add Post',
      actionTitle: 'Post',
      onActionPressed: () async {
        await context.read<AddPostCubit>().addPost();
      },
    );
  }
}

class _PhotosListView extends StatelessWidget {
  const _PhotosListView();

  @override
  Widget build(BuildContext context) {
    return const PhotosListView(
      photos: [],
    );
  }
}

class _PetNameTextField extends StatelessWidget {
  const _PetNameTextField();

  @override
  Widget build(BuildContext context) {
    return PetNameTextField(
      onChanged: (value) {
        context.read<AddPostCubit>().setPetName(value);
      },
    );
  }
}

class _AgeSelector extends StatelessWidget {
  const _AgeSelector();

  @override
  Widget build(BuildContext context) {
    return AgeSelector();
  }
}


class _PetCategorySelector extends StatelessWidget {
  const _PetCategorySelector();

  @override
  Widget build(BuildContext context) {
    return PetCategorySelector(
      allOption: false,
      onSelected: (PetCategory value) {
        context.read<AddPostCubit>().setPetCategory(value);
      },
    );
  }
}

class _PetDescriptionTextField extends StatelessWidget {
  const _PetDescriptionTextField();

  @override
  Widget build(BuildContext context) {
    return PetDescriptionTextField(
      onChanged: (value) {
        context.read<AddPostCubit>().setDescription(value);
      },
    );
  }
}
