import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';

class YCircularIcon extends StatelessWidget {
  const YCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = YSizes.lg,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? YColors.black.withOpacity(0.8)
                : YColors.white.withOpacity(0.8),
      ),
      child: IconButton(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        icon: Icon(icon, color: color, size: size),
      ),
    );
  }
}
