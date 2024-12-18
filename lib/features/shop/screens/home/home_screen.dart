import 'package:flexishop/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flexishop/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flexishop/features/shop/screens/home/widgets/home_promo_slider.dart';
import 'package:flexishop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shape/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shape/container/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header
            const YPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- Appbar
                  YHomeAppBar(),
                  SizedBox(height: YSizes.spaceBtwSections),

                  /// -- Searchbar
                  YCustomSearchBar(text: YTexts.searchInStore),
                  SizedBox(height: YSizes.spaceBtwSections),

                  /// -- Categories
                  Padding(
                    padding: EdgeInsets.only(left: YSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading Text
                        YSectionHeading(
                          title: YTexts.popularCat,
                          textColor: YColors.white,
                          showActionButton: false,
                        ),
                        SizedBox(height: YSizes.spaceBtwItems),

                        /// -- Heading Categories
                        YHomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: YSizes.spaceBtwSections),
                ],
              ),
            ),

            /// -- Body
            Padding(
              padding: const EdgeInsets.all(YSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Promo slider banner
                  const YPromoSlider(banners: [
                    YImages.banner4,
                    YImages.banner3,
                    YImages.banner5,
                  ]),
                  const SizedBox(height: YSizes.spaceBtwItems),

                  /// Heading
                  YSectionHeading(title: 'Popular Products', onPressed: () {}),
                  const SizedBox(height: YSizes.spaceBtwItems),

                  /// -- Popular Products
                  YGridLayout(
                      itemCount: 8,
                      itemBuilder: (_, index) => const YProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
