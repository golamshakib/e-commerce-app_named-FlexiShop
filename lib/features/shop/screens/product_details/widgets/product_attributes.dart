import 'package:flexishop/common/widgets/custom_shape/container/rounded_container.dart';
import 'package:flexishop/common/widgets/texts/product_title_text.dart';
import 'package:flexishop/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class YProductAttributes extends StatelessWidget {
  const YProductAttributes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// -- Selected Attributes , Pricing & Description

        YRoundedContainer(
          backgroundColor: dark ? YColors.darkGrey : YColors.grey,
          padding: const EdgeInsets.all(YSizes.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// -- Title, Price & Stock status
              Row(
                children: [
                  const YSectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(width: YSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          /// - Title
                          YProductTitleText(title: 'Price : ', smallSize: true),
                          SizedBox(width: YSizes.xs),

                          /// - Actual Price
                          YProductPriceText(price: '134.0', lineThrough: true),
                          SizedBox(width: YSizes.spaceBtwItems),

                          /// - Sale price
                          YProductPriceText(price: '122.6', isLarge: true),
                        ],
                      ),
                      Row(
                        children: [
                          /// - Stock Status
                          const YProductTitleText(
                              title: 'Stock : ', smallSize: true),
                          const SizedBox(width: YSizes.xs),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// -- Variation Description
              const YProductTitleText(
                title: 'This is a product description for Nike Sports shoe.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: YSizes.spaceBtwItems),

        /// -- Colors Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// - Colors Heading
            const YSectionHeading(title: 'Color', showActionButton: false),
            const SizedBox(height: YSizes.spaceBtwItems / 2),

            /// - Colors
            Wrap(
              spacing: 8,
              children: [
                YChoiceChip(text: 'Green', selected: true, onSelected: (value) {}),
                YChoiceChip(text: 'Black', selected: false, onSelected: (value) {}),
                YChoiceChip(text: 'Blue', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),

        /// -- Size Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// - Size Heading
            const YSectionHeading(title: 'Size', showActionButton: false),
            const SizedBox(height: YSizes.spaceBtwItems / 2),

            /// - Size
            Wrap(
              spacing: 8,
              children: [
                YChoiceChip(text: 'EU 32', selected: false, onSelected: (value) {}),
                YChoiceChip(text: 'EU 34', selected: false, onSelected: (value) {}),
                YChoiceChip(text: 'EU 36', selected: true, onSelected: (value) {}),
              ],
            ),
          ],
        )
      ],
    );
  }
}
