import 'package:flexishop/common/widgets/layouts/grid_layout.dart';
import 'package:flexishop/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flexishop/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class YCategoryTab extends StatelessWidget {
  const YCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(YSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Brands
              const YBrandShowcase(
                images: [
                  YImages.product2,
                  YImages.product6,
                  YImages.product5,
                ],
              ),
              const YBrandShowcase(
                images: [
                  YImages.product2,
                  YImages.product6,
                  YImages.product5,
                ],
              ),
              const SizedBox(height: YSizes.spaceBtwItems),

              /// -- Products
              /// -- Heading Title
              YSectionHeading(title: 'You might like', onPressed: () {}),
              const SizedBox(height: YSizes.spaceBtwItems),

              /// -- Product Grid
              YGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const YProductCardVertical()),
              const SizedBox(height: YSizes.spaceBtwItems),
            ],
          ),
        ),
      ],
    );
  }
}
