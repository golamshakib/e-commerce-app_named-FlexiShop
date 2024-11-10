import 'package:flexishop/common/styles/shadows.dart';
import 'package:flexishop/common/widgets/images/rounded_image.dart';
import 'package:flexishop/common/widgets/texts/product_title_text.dart';
import 'package:flexishop/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../custom_shape/container/rounded_container.dart';
import '../../icons/circular_icon.dart';
import '../../texts/product_price_text.dart';

class YProductCartVertical extends StatelessWidget {
  const YProductCartVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);

    /// -- Container with side padding, color, edges, radius & shadow
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180.0,
        padding: const EdgeInsets.all(1.0),
        decoration: BoxDecoration(
            boxShadow: [YShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(YSizes.productImageRadius),
            color: dark ? YColors.darkerGrey : YColors.white),
        child: Column(
          /// Thumbnail, wishlist button & discount tag
          children: [
            YRoundedContainer(
              height: 180.0,
              padding: const EdgeInsets.all(YSizes.sm),
              backgroundColor: dark ? YColors.dark : YColors.light,
              child: Stack(
                children: [
                  const YRoundedImage(
                    imageUrl: YImages.productImage1,
                    applyImageRadius: true,
                  ),

                  /// Discount Tag
                  Positioned(
                    top: 12.0,
                    child: YRoundedContainer(
                      radius: YSizes.sm,
                      padding: const EdgeInsets.symmetric(
                          horizontal: YSizes.sm, vertical: YSizes.xs),
                      backgroundColor: YColors.secondary.withOpacity(0.8),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: YColors.black),
                      ),
                    ),
                  ),

                  /// Favorite Button
                  const Positioned(
                    top: 0.0,
                    right: 0.0,
                    child:
                        YCircularIcon(width: 35.0,height: 35.0, icon: Iconsax.heart5, color: Colors.red),
                  ),
                ],
              ),
            ),
            const SizedBox(height: YSizes.spaceBtwItems / 2),

            /// Details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: YSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Product Title
                  const YProductTitleText(
                    title: 'Green Air Nike shoes',
                    smallSize: true,
                  ),
                  const SizedBox(height: YSizes.spaceBtwItems / 2),

                  /// Brand Name Text
                  Row(
                    children: [
                      Text('Nike',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.labelMedium),
                      const SizedBox(width: YSizes.xs),
                      const Icon(Iconsax.verify5,
                          color: YColors.primary, size: YSizes.iconXs),
                    ],
                  ),

                  /// -- MAYBE NEED TO ADD "SPACER" for all product card occupy same size
                  /// Price & add cart button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Price
                      const YProductPriceText(price: '35.0'),

                      /// Add cart button
                      Container(
                        decoration: const BoxDecoration(
                          color: YColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(YSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(YSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                            width: YSizes.iconLg * 1.2,
                            height: YSizes.iconLg * 1.2,
                            child: Center(
                                child:
                                    Icon(Iconsax.add, color: YColors.white))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
