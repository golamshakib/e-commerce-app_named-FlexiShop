import 'package:flexishop/common/widgets/custom_shape/container/rounded_container.dart';
import 'package:flexishop/common/widgets/images/circular_image.dart';
import 'package:flexishop/common/widgets/texts/brand_text_with_verification_icon.dart';
import 'package:flexishop/common/widgets/texts/product_price_text.dart';
import 'package:flexishop/common/widgets/texts/product_title_text.dart';
import 'package:flexishop/utils/constants/colors.dart';
import 'package:flexishop/utils/constants/enums.dart';
import 'package:flexishop/utils/constants/image_strings.dart';
import 'package:flexishop/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class YProductData extends StatelessWidget {
  const YProductData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// -- Discount & Price
        Row(
          children: [
            /// - Discount Tag
            YRoundedContainer(
              padding: const EdgeInsets.symmetric(
                  horizontal: YSizes.sm, vertical: YSizes.xs),
              radius: YSizes.sm,
              backgroundColor: YColors.secondary.withOpacity(0.8),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: YColors.black),
              ),
            ),
            const SizedBox(width: YSizes.spaceBtwItems),

            /// - Price
            const YProductPriceText(price: '250', lineThrough: true),
            const SizedBox(width: YSizes.spaceBtwItems),
            const YProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: YSizes.spaceBtwItems / 1.5),

        /// -- Title
        const YProductTitleText(title: 'Nike Sports Shoe'),
        const SizedBox(height: YSizes.spaceBtwItems / 1.5),

        /// -- Stock Status
        Row(
          children: [
            const Text('Status:'),
            const SizedBox(width: YSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: YSizes.spaceBtwItems / 1.5),
        /// -- Brand
        Row(
          children: [
            YCircularImage(
                containerHeight: 32.0,
                containerWidth: 32.0,
                overlayColor: dark? YColors.white : YColors.black,
                imageUrl: YImages.nikeLogo),
            const SizedBox(width: YSizes.spaceBtwItems / 2),
            const YBrandTitleTextWithVerificationIcon(title: 'Nike', brandTextSize: TextSizes.medium),
          ],
        )
      ],
    );
  }
}

