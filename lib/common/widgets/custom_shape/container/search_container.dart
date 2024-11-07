import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class YCustomSearchBar extends StatelessWidget {
  const YCustomSearchBar({
    super.key, required this.text, this.icon = Iconsax.search_normal, this.showBackground = true, this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: YSizes.defaultSpace),
      child: Container(
        padding: EdgeInsets.all(YSizes.md),
        decoration: BoxDecoration(
            color: showBackground ? dark ? YColors.dark : YColors.light : Colors.transparent,
            borderRadius: BorderRadius.circular(YSizes.borderRadiusLg),
            border: showBorder ? Border.all(color: YColors.grey) : null
        ),
        child: Row(children: [
          Icon(icon, color: YColors.darkGrey),
          SizedBox(width: YSizes.spaceBtwItems),
          Text(text, style: Theme.of(context).textTheme.bodySmall,)
        ],),
      ),
    );
  }
}
