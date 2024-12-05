import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';
import '../custom_shape/container/rounded_container.dart';
import 'brand_card.dart';

class YBrandShowcase extends StatelessWidget {
  const YBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return YRoundedContainer(
      showBorder: true,
      borderColor: YColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(YSizes.md),
      margin: const EdgeInsets.only(bottom: YSizes.spaceBtwItems),
      child: Column(
        children: [
          /// -- Brands with products Count
          const YBrandCard(showBorder: false),
          const SizedBox(height: YSizes.spaceBtwItems),

          ///  -- Brands top 3 products Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  /// -- Method of Images
  Widget brandTopProductImageWidget(String image, context) {
    final dark = YDeviceUtils.isDarkMode(context);
    return Expanded(
      child: YRoundedContainer(
        height: 100.0,
        margin: const EdgeInsets.only(right: YSizes.sm),
        padding: const EdgeInsets.all(YSizes.md),
        backgroundColor: dark ? YColors.darkerGrey : YColors.grey,
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}
