import 'package:flexishop/common/widgets/appbar/custom_appbar.dart';
import 'package:flexishop/common/widgets/custom_shape/container/rounded_container.dart';
import 'package:flexishop/common/widgets/custom_shape/container/search_container.dart';
import 'package:flexishop/common/widgets/layouts/grid_layout.dart';
import 'package:flexishop/common/widgets/products/product_cards/product_cart_counter_icon.dart';
import 'package:flexishop/common/widgets/texts/brand_text_with_verification_icon.dart';
import 'package:flexishop/common/widgets/texts/section_heading.dart';
import 'package:flexishop/utils/constants/colors.dart';
import 'package:flexishop/utils/constants/image_strings.dart';
import 'package:flexishop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/images/circular_image.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/device/device_utility.dart';

class StoreScreen extends StatelessWidget {
  static const String routeName = '/store';

  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);

    return Scaffold(
      appBar: YCustomAppbar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [YCartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) => [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            expandedHeight: 440.0,
            backgroundColor: dark ? YColors.dark : YColors.light,
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(YSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  /// -- Search bar
                  const SizedBox(height: YSizes.spaceBtwItems),
                  const YCustomSearchBar(
                      text: 'Search in Store',
                      showBackground: false,
                      padding: EdgeInsets.zero),
                  const SizedBox(height: YSizes.spaceBtwItems),

                  /// -- Featured Brands Title
                  const YSectionHeading(title: 'Featured Brands'),
                  const SizedBox(height: YSizes.spaceBtwItems / 1.5),

                  YGridLayout(
                    itemCount: 4,
                    mainAxisExtent: 80,
                    itemBuilder: (_, index) => GestureDetector(
                      onTap: () {},

                      /// -- Featured Brands Container
                      child: YRoundedContainer(
                        showBorder: true,
                        padding: const EdgeInsets.all(YSizes.sm),
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            /// -- Icon
                            const Flexible(
                              child: YCircularImage(
                                  imageUrl: YImages.shoeIcon1,
                                  backgroundColor: Colors.transparent),
                            ),
                            const SizedBox(width: YSizes.spaceBtwItems / 2),

                            /// -- Text
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const YBrandTitleTextWithVerificationIcon(
                                      title: 'Nike',
                                      brandTextSize: TextSizes.large),
                                  Text('256 Products',
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        body: Container(),
      ),
    );
  }
}
