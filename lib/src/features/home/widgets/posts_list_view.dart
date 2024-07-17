import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';
import 'package:petshare/src/core/resources/app_icons.dart';
import 'package:petshare/src/core/resources/app_text_styles.dart';
import 'package:petshare/src/core/utils/app_icon.dart';
import 'package:petshare/src/core/utils/network_image_wrapper.dart';
import 'package:petshare/src/features/home/models/post_model.dart';
import 'package:petshare/src/core/widgets/loading/app_refresh_indicator.dart';

class PostsListView extends StatelessWidget {
  const PostsListView({
    required this.posts,
    required this.onTap,
    required this.onLikePressed,
    super.key,
  });

  final List<PostModel> posts;
  final void Function(PostModel) onTap;
  final void Function() onLikePressed;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: AppRefreshIndicator(
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: posts.length,
          separatorBuilder: (_, __) => const SizedBox(height: 30),
          itemBuilder: (_, index) {
            final post = posts[index];
            return _PostCard(
              post: post,
              onTap: onTap,
              onLikePressed: onLikePressed,
            );
          },
        ),
        //onRefresh: () async {},
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    required this.post,
    required this.onTap,
    required this.onLikePressed,
  });

  final PostModel post;
  final void Function(PostModel) onTap;
  final void Function() onLikePressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(post),
      child: Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.white,
                  AppColors.lightGrey,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                  post.authorAvatarURL,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    post.authorFullName,
                                    style: AppTextStyles.size14MediumDarkGrey,
                                  ),
                                  const SizedBox(height: 1),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 7,
                                      vertical: 1,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppColors.lightAccent,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Text(
                                      post.category.name.toUpperCase(),
                                      style: AppTextStyles.size10SemiBoldAccent,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const AppIcon(
                            AppIcons.ellipsis,
                            color: AppColors.grey,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        post.text,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: NetworkImageWrapper(
                      post.imageURL,
                      width: MediaQuery.sizeOf(context).width,
                      height: 220,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -20,
            left: 20,
            child: _LikeButton(
              likes: post.likedIds.length,
              onPressed: onLikePressed,
            ),
          )
        ],
      ),
    );
  }
}

class _LikeButton extends StatelessWidget {
  const _LikeButton({
    required this.likes,
    required this.onPressed,
  });

  final int likes;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 7,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          const AppIcon(
            AppIcons.thumbsUp,
            height: 24,
            color: AppColors.grey,
          ),
          const SizedBox(width: 7),
          Text(
            likes.toString(),
            style: AppTextStyles.size14MediumGrey,
          ),
        ],
      ),
    );
  }
}
