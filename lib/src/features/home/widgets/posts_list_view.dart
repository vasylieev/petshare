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
    super.key,
  });

  final List<PostModel> posts;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: AppRefreshIndicator(
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: posts.length,
          separatorBuilder: (_, __) => const SizedBox(height: 10),
          itemBuilder: (_, index) => _PostCard(post: posts[index]),
        ),
        //onRefresh: () async {},
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({required this.post});

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(post.authorAvatarURL),
                    ),
                    const SizedBox(width: 10),
                    Text(post.authorFullName),
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
          NetworkImageWrapper(
            post.imageURL,
            width: MediaQuery.sizeOf(context).width,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      const AppIcon(
                        AppIcons.paw15,
                        height: 20,
                        color: AppColors.grey,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        post.likedIds.length.toString(),
                        style: AppTextStyles.size14MediumGrey,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
