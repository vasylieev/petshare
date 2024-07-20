import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';
import 'package:petshare/src/core/widgets/loading/loading_indicator.dart';

class NetworkImageWrapper extends StatelessWidget {
  const NetworkImageWrapper(
    this.image, {
    this.width,
    this.height,
    this.fit,
    this.imageProvider = false,
    this.avatar = false,
    super.key,
  });

  final String image;
  final BoxFit? fit;
  final bool imageProvider;
  final double? width, height;
  final bool avatar;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      width: width,
      imageUrl: image,
      fit: fit,
      progressIndicatorBuilder: (_, __, ___) {
        return const Center(
          child: LoadingIndicator(
            color: AppColors.darkGrey,
          ),
        );
      },
    );
  }
}
