import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class YRoundedImage extends StatelessWidget {
  const YRoundedImage({
    super.key,
    this.border,
    this.padding,
    this.onTap,
    this.containerHeight,
    this.containerWidth,
    this.borderRadius = YSizes.md,
    required this.imageUrl,
    this.fit = BoxFit.contain,
    this.applyImageRadius = true,
    this.backgroundColor,
    this.isNetworkImage = false,

  });

  final double? containerHeight, containerWidth;
  final double borderRadius;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: containerHeight,
        width: containerWidth,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image:
            isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
