import 'package:flutter/material.dart';

class SliverSizedBox extends StatelessWidget {
  const SliverSizedBox({
    this.width,
    this.height,
    super.key,
  });

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: height,
        width: width,
      ),
    );
  }
}
