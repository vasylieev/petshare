import 'package:flutter/material.dart';
import 'package:petshare/src/core/widgets/app_bars/title_app_bar.dart';
import 'package:petshare/src/core/widgets/backgrounds/app_default_background.dart';
import 'package:petshare/src/core/widgets/slivers/sliver_sized_box.dart';
import 'package:petshare/src/features/add_post/widgets/add_post_resources.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

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
      padding: 0,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: CustomScrollView(
              slivers: [
                SliverSizedBox(height: 80),
                _PetNameTextField(),
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
      onActionPressed: () {},
    );
  }
}

class _PhotosListView extends StatelessWidget {
  const _PhotosListView();

  @override
  Widget build(BuildContext context) {
    return PhotosListView(
      photos: [],
    );
  }
}

class _PetNameTextField extends StatelessWidget {
  const _PetNameTextField();

  @override
  Widget build(BuildContext context) {
    return PetNameTextField(
      onChanged: (value) {},
    );
  }
}

class _PetDescriptionTextField extends StatelessWidget {
  const _PetDescriptionTextField();

  @override
  Widget build(BuildContext context) {
    return PetDescriptionTextField(
      onChanged: (value) {},
    );
  }
}
