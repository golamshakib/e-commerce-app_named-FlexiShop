import 'package:flexishop/common/widgets/icons/circular_icon.dart';
import 'package:flexishop/utils/constants/colors.dart';
import 'package:flexishop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/device/device_utility.dart';

class YBottomAddToCart extends StatelessWidget {
  const YBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: YSizes.defaultSpace, vertical: YSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? YColors.darkerGrey : YColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(YSizes.cardRadiusLg),
          topRight: Radius.circular(YSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              YCircularIcon(
                icon: Iconsax.minus,
                width: 30,
                height: 30,
                color: YColors.white,
                backgroundColor: YColors.darkGrey,
                onPressed: () {},
              ),
              const SizedBox(width: YSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: YSizes.spaceBtwItems),
              YCircularIcon(
                icon: Iconsax.add,
                width: 30,
                height: 30,
                color: YColors.white,
                backgroundColor: YColors.black,
                onPressed: () {},
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(YSizes.md),
              backgroundColor: YColors.black,
              side: const BorderSide(color: YColors.black)
            ),
            child: const Text('Add to cart'),

          ),
        ],
      ),
    );
  }
}
