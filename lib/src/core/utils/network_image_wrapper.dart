import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:petshare/src/core/widgets/loading/image_loading_indicator.dart';

class NetworkImageWrapper extends StatelessWidget {
  const NetworkImageWrapper(
    this.image, {
    required this.width,
    this.fit = BoxFit.cover,
    this.imageProvider = false,
    super.key,
  });

  final String image;
  final BoxFit fit;
  final bool imageProvider;
  final double width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: 220,
      width: MediaQuery.sizeOf(context).width,
      imageUrl: image,
      fit: fit,
      progressIndicatorBuilder: (_, __, ___) {
        return const ImageLoadingIndicator();
      },
    );
  }
}
