import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class YRoundedImage extends StatelessWidget {
  const YRoundedImage({
    super.key,
    this.border,
    this.padding,
    this.onTap,
    this.height,
    this.width,
    this.borderRadius = YSizes.md,
    required this.imageUrl,
    this.fit = BoxFit.contain,
    this.applyImageRadius = true,
    this.backgroundColor = YColors.light,
    this.isNetworkImage = false,

  });

  final double? height, width;
  final double borderRadius;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
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
