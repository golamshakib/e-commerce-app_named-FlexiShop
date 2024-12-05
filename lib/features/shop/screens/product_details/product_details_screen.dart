import 'package:flexishop/common/widgets/appbar/custom_appbar.dart';
import 'package:flexishop/common/widgets/custom_shape/container/primary_header_container.dart';
import 'package:flexishop/common/widgets/custom_shape/container/rounded_container.dart';
import 'package:flexishop/common/widgets/custom_shape/curved_edges/curved_edges.dart';
import 'package:flexishop/common/widgets/custom_shape/curved_edges/curved_edges_widget.dart';
import 'package:flexishop/common/widgets/icons/circular_icon.dart';
import 'package:flexishop/common/widgets/images/rounded_image.dart';
import 'package:flexishop/common/widgets/texts/brand_title_text.dart';
import 'package:flexishop/common/widgets/texts/product_price_text.dart';
import 'package:flexishop/common/widgets/texts/product_title_text.dart';
import 'package:flexishop/common/widgets/texts/section_heading.dart';
import 'package:flexishop/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:flexishop/features/shop/screens/product_details/widgets/product_details_data.dart';
import 'package:flexishop/features/shop/screens/product_details/widgets/product_details_image_slider.dart';
import 'package:flexishop/features/shop/screens/product_details/widgets/product_details_ratings_and_share.dart';
import 'package:flexishop/utils/constants/colors.dart';
import 'package:flexishop/utils/constants/image_strings.dart';
import 'package:flexishop/utils/constants/sizes.dart';
import 'package:flexishop/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import 'widgets/product_attributes.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const String routeName = '/product_detail';

  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: const YBottomAddToCart(),

      /// -- Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// - Image Slider
            const YProductImageSlider(),

            /// - Product Details
            Padding(
                padding: const EdgeInsets.only(
                    right: YSizes.defaultSpace,
                    left: YSizes.defaultSpace,
                    bottom: YSizes.defaultSpace),
                child: Column(
                  children: [
                    /// - Ratings & Share Button
                    const YProductRatingAndShare(),

                    /// - Price, Title, Stock & Brand
                    const YProductData(),
                    const SizedBox(height: YSizes.spaceBtwSections / 2),

                    /// - Product Attributes
                    const YProductAttributes(),
                    const SizedBox(height: YSizes.spaceBtwSections),

                    /// - Checkout Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout')),
                    ),
                    const SizedBox(height: YSizes.spaceBtwSections),

                    /// - Description
                    const YSectionHeading(title: 'Description', showActionButton: false),
                    const SizedBox(height: YSizes.spaceBtwItems),
                    const ReadMoreText(
                      'This is a product description for Green Nike Steve less vest. There are more things can be added but i am just practices nothing else.',
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      colorClickableText: YColors.primary,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'less',
                      moreStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w800),
                      lessStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: YSizes.md),

                    /// - Reviews
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const YSectionHeading(title: 'Reviews(199)', showActionButton: false),
                        IconButton(onPressed: () {}, icon: const Icon(Iconsax.arrow_right_3, size: 18,)),
                      ],
                    ),
                    const SizedBox(height: YSizes.spaceBtwSections),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
