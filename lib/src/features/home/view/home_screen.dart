import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';
import 'package:petshare/src/core/widgets/paddings/app_default_background.dart';
import 'package:petshare/src/features/home/models/post_model.dart';
import 'package:petshare/src/features/home/widgets/home_resources.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      backgroundColor: AppColors.lightGrey,
      padding: false,
      floatingActionButton: _AddPetButton(),
      child: CustomScrollView(
        slivers: [
          _PostsListView(),
        ],
      ),
    );
  }
}

class _AddPetButton extends StatelessWidget {
  const _AddPetButton();

  @override
  Widget build(BuildContext context) {
    return AddPetButton(
      onPressed: () {},
    );
  }
}

class _PostsListView extends StatelessWidget {
  const _PostsListView();

  @override
  Widget build(BuildContext context) {
    return PostsListView(
      posts: [
        PostModel(
          authorFullName: 'Denys Vasyliev',
          authorAvatarURL: 'https://images.pexels.com/photos/35537/child-children-girl-happy.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          category: PostCategory.dogs,
          text: 'I am confident that my experience and skills align well with the responsibilities of this role, such as designing and scaling mobile applications, implementing cross-platform UI functionality, writing high-quality code, and integrating with third-party services. I am also keen to share my knowledge with team members and effectively communicate with managers and clients.',
          imageURL: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Cat_August_2010-4.jpg/1200px-Cat_August_2010-4.jpg',
          likedIds: [],
        ),
        PostModel(
          authorFullName: 'Denys Vasyliev',
          authorAvatarURL: 'https://images.pexels.com/photos/35537/child-children-girl-happy.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          category: PostCategory.dogs,
          text: 'I am confident that my experience and skills align well with the responsibilities of this role, such as designing and scaling mobile applications, implementing cross-platform UI functionality, writing high-quality code, and integrating with third-party services. I am also keen to share my knowledge with team members and effectively communicate with managers and clients.',
          imageURL: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Cat_August_2010-4.jpg/1200px-Cat_August_2010-4.jpg',
          likedIds: [],
        ),
        PostModel(
          authorFullName: 'Denys Vasyliev',
          authorAvatarURL: 'https://images.pexels.com/photos/35537/child-children-girl-happy.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          category: PostCategory.dogs,
          text: 'I am confident that my experience and skills align well with the responsibilities of this role, such as designing and scaling mobile applications, implementing cross-platform UI functionality, writing high-quality code, and integrating with third-party services. I am also keen to share my knowledge with team members and effectively communicate with managers and clients.',
          imageURL: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Cat_August_2010-4.jpg/1200px-Cat_August_2010-4.jpg',
          likedIds: [],
        ),
      ],
    );
  }
}
