import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class YCustomSearchBar extends StatelessWidget {
  const YCustomSearchBar({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: YSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          padding: const EdgeInsets.all(YSizes.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? YColors.dark
                      : YColors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(YSizes.borderRadiusLg),
              border: showBorder
                  ? Border.all(color: YColors.darkGrey)
                  : null),
          child: Row(
            children: [
              Icon(icon, color: dark ? YColors.darkerGrey : Colors.grey),
              const SizedBox(width: YSizes.spaceBtwItems),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
