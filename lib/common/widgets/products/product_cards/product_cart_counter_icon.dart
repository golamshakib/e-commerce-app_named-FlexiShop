import 'package:flexishop/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class YCartCounterIcon extends StatelessWidget {
  const YCartCounterIcon({
    super.key,
    this.iconColor,
    required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: const Icon(Iconsax.shopping_bag),
            color: iconColor),
        Positioned(
          right: 0.0,
          child: Container(
            height: 18.0,
            width: 18.0,
            decoration: BoxDecoration(
                color: dark ? YColors.white : YColors.black,
                borderRadius: BorderRadius.circular(100.0)),
            child: Center(
                child: Text('2',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(color: dark ? YColors.black : YColors.white, fontSizeFactor: 0.8))),
          ),
        ),
      ],
    );
  }
}
