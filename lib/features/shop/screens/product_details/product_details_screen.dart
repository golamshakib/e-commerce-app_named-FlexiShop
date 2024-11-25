import 'package:flexishop/common/widgets/appbar/custom_appbar.dart';
import 'package:flexishop/common/widgets/custom_shape/container/primary_header_container.dart';
import 'package:flexishop/common/widgets/custom_shape/container/rounded_container.dart';
import 'package:flexishop/common/widgets/custom_shape/curved_edges/curved_edges.dart';
import 'package:flexishop/common/widgets/custom_shape/curved_edges/curved_edges_widget.dart';
import 'package:flexishop/common/widgets/icons/circular_icon.dart';
import 'package:flexishop/common/widgets/images/rounded_image.dart';
import 'package:flexishop/features/shop/screens/product_details/widgets/product_details_data.dart';
import 'package:flexishop/features/shop/screens/product_details/widgets/product_details_image_slider.dart';
import 'package:flexishop/features/shop/screens/product_details/widgets/product_details_ratings_and_share.dart';
import 'package:flexishop/utils/constants/image_strings.dart';
import 'package:flexishop/utils/constants/sizes.dart';
import 'package:flexishop/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const String routeName = '/product_detail';

  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);
    return Scaffold(
      appBar: YCustomAppbar(
        showBackArrow: true,
        actions: [
          YCircularIcon(
              icon: Iconsax.heart5,
              color: Colors.red,
              backgroundColor: Colors.transparent,
              onPressed: () {}),
        ],
      ),

      /// -- Body
      body: const SingleChildScrollView(
        child: Column(
          children: [
            /// - Image Slider
            YProductImageSlider(),

            /// - Product Details
            Padding(
                padding: EdgeInsets.only(
                    right: YSizes.defaultSpace,
                    left: YSizes.defaultSpace,
                    bottom: YSizes.defaultSpace),
                child: Column(
                  children: [
                    /// - Ratings & Share Button
                    YProductRatingAndShare(),

                    /// - Price, Title, Stock & Brand
                    YProductData(),

                    /// - Product Variation

                    /// - Color

                    /// - Size
                  ],
                )),


          ],
        ),
      ),
    );
  }
}
