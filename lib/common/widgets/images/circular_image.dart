import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';

class YCircularImage extends StatelessWidget {
  const YCircularImage({
    super.key,
    this.padding = const EdgeInsets.all(YSizes.sm),
    this.containerHeight = 56.0,
    this.containerWidth = 56.0,
    this.borderRadius = 100.0,
    this.imageHeight = double.infinity,
    this.imageWidth = double.infinity,
    required this.imageUrl,
    this.fit = BoxFit.contain,
    this.backgroundColor,
    this.overlayColor,
    this.isNetworkImage = false,
  });

  final double containerHeight, containerWidth;
  final double? imageHeight, imageWidth;
  final double borderRadius;
  final String imageUrl;
  final Color? backgroundColor;
  final Color? overlayColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry padding;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);
    return Container(
      height: containerHeight,
      width: containerWidth,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor ?? (dark ? YColors.black : YColors.white),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Image(
        width: imageHeight,
        height: imageWidth,
        fit: fit,
        image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl),
        color: overlayColor ?? (dark ? YColors.white : YColors.black),
      ),
    );
  }
}
