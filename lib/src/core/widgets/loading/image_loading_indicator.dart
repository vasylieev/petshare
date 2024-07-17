import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';
import 'package:petshare/src/core/widgets/loading/loading_indicator.dart';

class ImageLoadingIndicator extends StatelessWidget {
  const ImageLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: MediaQuery.sizeOf(context).width,
      color: AppColors.lightGrey,
      child: const LoadingIndicator(
        color: AppColors.grey,
      ),
    );
  }
}
